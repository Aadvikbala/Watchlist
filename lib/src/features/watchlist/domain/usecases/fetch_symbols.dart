import 'package:dartz/dartz.dart';
import 'package:watchlist_app/src/core/error/failure.dart';
import 'package:watchlist_app/src/core/usecase/usecase.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';
import 'package:watchlist_app/src/features/watchlist/domain/repository/watchlist_repository.dart';

class FetchSymbols implements UseCase<SearchResponse, String> {
  final WatchlistRepository repository;

  FetchSymbols(this.repository);

  @override
  Future<Either<Failure, SearchResponse>> call(String params) async {
    return await repository.symbols(params);
  }
}
