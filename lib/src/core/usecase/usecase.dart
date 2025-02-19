import 'package:dartz/dartz.dart';
import 'package:watchlist_app/src/core/error/failure.dart';

abstract interface class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {}
