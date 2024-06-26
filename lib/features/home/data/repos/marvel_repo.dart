import 'package:fpdart/fpdart.dart';
import '../models/character.dart';

import '../../../../core/errors/failures.dart';

abstract class MarvelRepo {
  Future<Either<Failure, List<Character>>> getCharacters({int offset = 0, int limit = 10});
}
