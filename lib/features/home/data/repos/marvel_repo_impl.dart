import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/api/errors/error_model.dart';
import '../../../../core/errors/failures.dart';
import '../models/api_models/comic_api_response.dart';
import '../models/character.dart';
import '../models/comic.dart';
import 'marvel_repo.dart';

import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_ponits.dart';
import '../../../../core/secrets/marvel_secrets.dart';
import '../models/api_models/character_api_response.dart';

class MarvelRepoImpl extends MarvelRepo {
  MarvelRepoImpl(this.apiConsumer);

  final ApiConsumer apiConsumer;

  String _generateHash(int timeStamp, String privateKey, String publicKey) {
    return md5.convert(utf8.encode('$timeStamp$privateKey$publicKey')).toString();
  }

  @override
  Future<Either<Failure, List<Character>>> getCharacters({int offset = 0, int limit = 10}) async {
    final int timeStamp = DateTime.now().millisecondsSinceEpoch;
    final String hash = _generateHash(timeStamp, MarvelSecrrets.marvelPrivateApiKey, MarvelSecrrets.marvelPublicApiKey);

    final result = await apiConsumer.get(
      EndPoint.getCharacters,
      queryParameters: {
        'ts': timeStamp,
        'apikey': MarvelSecrrets.marvelPublicApiKey,
        'hash': hash,
        'offset': offset,
        'limit': limit,
      },
    );

    if (result is ErrorModel) {
      return Left(Failure(result.errorMessage));
    }

    try {
      final marvelApiResponse = CharacterApiResponse.fromJson(result);
      final characterList = marvelApiResponse.data.results;
      return Right(characterList);
    } catch (e) {
      return Left(Failure("Error parsing character data: ${e.toString()}"));
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getCharacterComics(int characterId, {int offset = 0, int limit = 10}) async {
    final int timeStamp = DateTime.now().millisecondsSinceEpoch;
    final String hash = _generateHash(timeStamp, MarvelSecrrets.marvelPrivateApiKey, MarvelSecrrets.marvelPublicApiKey);

    final result = await apiConsumer.get(
      '${EndPoint.getCharacters}/$characterId/comics',
      queryParameters: {
        'ts': timeStamp,
        'apikey': MarvelSecrrets.marvelPublicApiKey,
        'hash': hash,
        'offset': offset,
        'limit': limit,
      },
    );

    if (result is ErrorModel) {
      return Left(Failure(result.errorMessage));
    }

    try {
      final comicApiResponse = ComicApiResponse.fromJson(result);
      return Right(comicApiResponse.data.results);
    } catch (e) {
      return Left(Failure("Error parsing comic data: ${e.toString()}"));
    }
  }
}
