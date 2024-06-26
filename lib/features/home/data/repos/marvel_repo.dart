import 'package:fpdart/fpdart.dart';
import 'package:hero_hub/features/home/data/models/character.dart';

import '../../../../core/errors/failures.dart';

abstract class MarvelRepo {
  Future<Either<Failure, List<Character>>> getCharacters();
}
