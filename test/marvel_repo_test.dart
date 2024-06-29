import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hero_hub/core/api/api_consumer.dart';
import 'package:hero_hub/core/api/api_exception.dart';
import 'package:hero_hub/core/api/end_ponits.dart';
import 'package:hero_hub/features/home/data/models/api_models/character_api_response_json.dart';
import 'package:hero_hub/features/home/data/models/api_models/comic_api_response_json.dart';
import 'package:hero_hub/features/home/data/models/character.dart';
import 'package:hero_hub/features/home/data/models/comic.dart';
import 'package:hero_hub/features/home/data/repos/marvel_repo_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'marvel_repo_test.mocks.dart';

@GenerateMocks([ApiConsumer])
void main() {
  late MockApiConsumer mockApiConsumer;
  late MarvelRepoImpl marvelRepo;

  setUp(() {
    mockApiConsumer = MockApiConsumer();
    marvelRepo = MarvelRepoImpl(mockApiConsumer);
  });

  group(
    'getCharacters',
    () {
      test('should return a list of characters when the call is successful', () async {
        // Arrange
        when(
          mockApiConsumer.get(
            EndPoint.getCharacters,
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer((_) async => CharacterAPIResponseJson.jsonTestResponse);

        // Act
        final result = await marvelRepo.getCharacters();

        // Assert
        expect(result, isA<Right<Failure, List<Character>>>());
        result.fold(
          (failure) {
            fail('Expected Right, but got Left(Failure): ${failure.errMessage}');
          },
          (characters) {
            expect(characters, isA<List<Character>>());
            expect(characters.length, 2);
            expect(characters[0].name, 'Character 1');
            expect(characters[1].name, 'Character 2');
          },
        );
      });

      test('should return a Failure when an ApiException occurs', () async {
        // Arrange
        when(
          mockApiConsumer.get(
            EndPoint.getCharacters,
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenThrow(
          ApiException(
            'API Error',
            errorType: ApiErrorType.serverError,
          ),
        );

        // Act
        final result = await marvelRepo.getCharacters();

        // Assert
        expect(result, isA<Left<Failure, List<Character>>>());
        result.fold(
          (failure) {
            expect(failure.errMessage, 'API Error');
            expect(failure.errorType, ApiErrorType.serverError);
          },
          (characters) {
            fail('Expected Left(Failure), but got Right(List<Character>)');
          },
        );
      });

      test('should return a Failure when a general exception occurs', () async {
        // Arrange
        when(
          mockApiConsumer.get(
            EndPoint.getCharacters,
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenThrow(Exception('General Error'));

        // Act
        final result = await marvelRepo.getCharacters();

        // Assert
        expect(result, isA<Left<Failure, List<Character>>>());

        result.fold(
          (failure) {
            expect(failure.errMessage, isNotEmpty);
            expect(failure.errorType, isNotNull);
          },
          (characters) {
            fail('Expected Left(Failure), but got Right(List<Character>)');
          },
        );
      });
    },
  );

  group(
    'getChracterComics',
    () {
      const int testCharacterId = 22506;
      test('should return a list of comics when the call is successfull', () async {
        // Arrange
        when(
          mockApiConsumer.get(
            '${EndPoint.getCharacters}/$testCharacterId/comics',
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer((_) async => ComicAPIResponse.jasonTestResponse);

        // Act
        final result = await marvelRepo.getCharacterComics(testCharacterId);

        // Assert
        expect(result, isA<Right<Failure, List<Comic>>>());
        result.fold(
          (failure) {
            fail('Expected Right, but got Left(Failure): ${failure.errMessage}');
          },
          (comics) {
            expect(comics, isA<List<Comic>>());
            expect(comics.length, greaterThan(0));
            expect(comics[0].id, testCharacterId);

            // More specific assertions about the comic data
            final firstComic = comics.first;

            // Check basic properties
            expect(firstComic.id, isA<int>());
            expect(firstComic.id, greaterThan(0));
            expect(firstComic.title, isA<String>());
            expect(firstComic.title, isNotEmpty);

            // Check description (it's optional in your model)
            expect(firstComic.description, anyOf(isA<String>(), isNull));

            // Check thumbnail
            expect(firstComic.thumbnail, isA<Thumbnail>());
            expect(firstComic.thumbnail.path, isA<String>());
            expect(firstComic.thumbnail.path, isNotEmpty);
            expect(firstComic.thumbnail.extension, isA<String>());
            expect(firstComic.thumbnail.extension, isNotEmpty);

            // Optional: Check if the thumbnail URL is properly formed
            final thumbnailUrl = '${firstComic.thumbnail.path}.${firstComic.thumbnail.extension}';
            expect(thumbnailUrl, contains('http'));
          },
        );
      });

      test('should return an empty list of comics when the API returns no results', () async {
        // Arrange
        when(
          mockApiConsumer.get(
            '${EndPoint.getCharacters}/$testCharacterId/comics',
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenAnswer((_) async => ComicAPIResponse.emptyListOfComicsResponse);

        // Act
        final result = await marvelRepo.getCharacterComics(testCharacterId);

        // Assert
        expect(result, isA<Right<Failure, List<Comic>>>());
        result.fold(
          (failure) {
            fail('Expected Right, but got Left(Failure): ${failure.errMessage}');
          },
          (comics) {
            expect(comics, isEmpty);
          },
        );
      });
      test('should return a Failure when an ApiException occurs', () async {
        // Arrange
        when(
          mockApiConsumer.get(
            '${EndPoint.getCharacters}/$testCharacterId/comics',
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenThrow(ApiException('API Error', errorType: ApiErrorType.serverError));

        // Act
        final result = await marvelRepo.getCharacterComics(testCharacterId);

        // Assert
        expect(result, isA<Left<Failure, List<Comic>>>());
        result.fold(
          (failure) {
            expect(failure.errMessage, 'API Error');
            expect(failure.errorType, ApiErrorType.serverError);
          },
          (comics) {
            fail('Expected Left(Failure), but got Right(List<Comic>)');
          },
        );
      });

      test('should return a Failure when a general exception occurs', () async {
        // Arrange
        when(
          mockApiConsumer.get(
            '${EndPoint.getCharacters}/$testCharacterId/comics',
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenThrow(ApiException('API Error', errorType: ApiErrorType.serverError));

        // Act
        final result = await marvelRepo.getCharacterComics(testCharacterId);

        // Assert
        expect(result, isA<Left<Failure, List<Comic>>>());
        result.fold(
          (failure) {
            expect(failure.errMessage, 'API Error');
            expect(failure.errorType, ApiErrorType.serverError);
          },
          (comics) {
            fail('Expected Left(Failure), but got Right(List<Comic>)');
          },
        );
      });
    },
  );
}
