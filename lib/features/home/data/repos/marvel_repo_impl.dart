import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../models/character.dart';
import 'marvel_repo.dart';

import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_ponits.dart';
import '../../../../core/secrets/marvel_secrets.dart';
import '../models/marvel_api_response.dart';

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

    try {
      final response = await apiConsumer.get(
        EndPoint.getCharacters,
        queryParameters: {
          'ts': timeStamp,
          'apikey': MarvelSecrrets.marvelPublicApiKey,
          'hash': hash,
          'offset': offset,
          'limit': limit,
        },
      );

      final marvelApiResponse = MarvelApiResponse.fromJson(response);
      final characterList = marvelApiResponse.data.results;
      return Right(characterList);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
