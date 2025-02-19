import 'package:dartz/dartz.dart';
import 'package:watchlist_app/src/core/error/failure.dart';
import 'package:watchlist_app/src/core/usecase/usecase.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';
import 'package:watchlist_app/src/features/watchlist/domain/repository/watchlist_repository.dart';

class FetchWatchlist implements UseCase<Watchlist, NoParams> {
  final WatchlistRepository repository;

  FetchWatchlist(this.repository);

  @override
  Future<Either<Failure, Watchlist>> call(params) async {
    return await repository.watchlist();
  }
}
