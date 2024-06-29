import 'package:flutter_test/flutter_test.dart';
import 'package:hero_hub/core/api/api_consumer.dart';
import 'package:hero_hub/core/api/end_ponits.dart';
import 'package:hero_hub/features/home/data/models/api_models/character_api_response_json.dart';
import 'package:hero_hub/features/home/data/models/character.dart';
import 'package:hero_hub/features/home/data/repos/marvel_repo_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'marvel_repo_test.mocks.dart';

// This is where we'll define our mock
// class MockApiConsumer extends Mock implements ApiConsumer {}

@GenerateMocks([ApiConsumer])
void main() {
// #1 Evaluate the code
// We are testing the getCharacters method in MarvelRepoImpl:
//    ♦ First, it calls the get method on a specific endpoint with some parameters.
//    ♦ It checks if the response is an ErrorModel. If so, it returns Left(Failure(errorMsg)).
//    ♦ Otherwise, it tries to parse the result into a character model list and returns it in a Right(characterList).
//    ♦ If an error is caught during parsing, it returns Left(Failure(errorMsg)).
//    ♦ So, there are two main outcomes: success and failure.

// In unit tests, we focus on the behavior and not the implementation.

// #2 Write group tests
// There are two possible outcomes for our method, so we group them together and run them one time.
// Each group should contain a success test and a failure test.
  late MockApiConsumer mockApiConsumer;

  late MarvelRepoImpl marvelRepo;

  setUp(() {
    mockApiConsumer = MockApiConsumer();
    marvelRepo = MarvelRepoImpl(mockApiConsumer);
  });

  test(
    'should return a list of characters when the call is successful',
    () async {
      // Arrange
      when(
        mockApiConsumer.get(
          EndPoint.getCharacters,
          queryParameters: anyNamed('queryParameters'),
        ),
      ).thenAnswer((_) async => CharacterAPIResponseJson.jsonTestResponse);
      // Act
      final result = await marvelRepo.getCharacters();
      // Debug print
      // print('Result: $result');
      // Assert
      result.fold(
        (failure) {
          // print('Failure: ${failure.errMessage}');
          fail('Expected Right, but got Left(Failure): ${failure.errMessage}');
        },
        (characters) {
          expect(characters, isA<List<Character>>());
          expect(characters.length, 2);
          expect(characters[0].name, 'Character 1');
          expect(characters[1].name, 'Character 2');
        },
      );
    },
  );
}
