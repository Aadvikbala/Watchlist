import 'package:dartz/dartz.dart';
import 'package:watchlist_app/src/core/error/failure.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';

abstract interface class WatchlistRepository {
  Future<Either<Failure, Watchlist>> watchlist();

  Future<Either<Failure, SearchResponse>> symbols(String query);
}
