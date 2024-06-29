import 'package:flutter_test/flutter_test.dart';
import 'package:hero_hub/core/api/api_consumer.dart';
import 'package:hero_hub/core/api/api_exception.dart';
import 'package:hero_hub/core/api/end_ponits.dart';
import 'package:hero_hub/core/api/errors/error_model.dart';
import 'package:hero_hub/features/home/data/models/api_models/character_api_response_json.dart';
import 'package:hero_hub/features/home/data/models/character.dart';
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

  group('getCharacters', () {
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

    test('should return a Failure when the API call fails', () async {
      // Arrange
      const errorMessage = 'API Error';
      when(
        mockApiConsumer.get(
          EndPoint.getCharacters,
          queryParameters: anyNamed('queryParameters'),
        ),
      ).thenAnswer((_) async => ErrorModel(errorMessage: errorMessage, status: 9999));

      // Act
      final result = await marvelRepo.getCharacters();

      // Assert
      result.fold(
        (failure) {
          expect(failure, isA<Failure>());
          expect(failure.errMessage, errorMessage);
        },
        (characters) {
          fail('Expected Left(Failure), but got Right(List<Character>)');
        },
      );
    });

    test('should return a Failure when parsing the API response fails', () async {
      // Arrange
      when(
        mockApiConsumer.get(
          EndPoint.getCharacters,
          queryParameters: anyNamed('queryParameters'),
        ),
      ).thenAnswer((_) async => {'invalid': 'json'});

      // Act
      final result = await marvelRepo.getCharacters();

      // Assert
      result.fold(
        (failure) {
          expect(failure, isA<Failure>());
          expect(failure.errMessage, contains('Error parsing character data'));
        },
        (characters) {
          fail('Expected Left(Failure), but got Right(List<Character>)');
        },
      );
    });
  });
}
