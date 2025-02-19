import 'package:dartz/dartz.dart';
import 'package:watchlist_app/src/core/error/exceptions.dart';
import 'package:watchlist_app/src/core/error/failure.dart';
import 'package:watchlist_app/src/features/watchlist/data/data_sources/watchlist_data_source.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';
import 'package:watchlist_app/src/features/watchlist/domain/repository/watchlist_repository.dart';

class WatchlistRepositoryImpl implements WatchlistRepository {
  final WatchlistDataSource dataSource;

  WatchlistRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, Watchlist>> watchlist() async {
    try {
      final watchlist = await dataSource.fetchWatchlist();
      return right(watchlist);
    } on ServiceException catch (e) {
      return left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, SearchResponse>> symbols(String query) async {
    try {
      final symbols = await dataSource.fetchSymbols();
      if (query.isNotEmpty) {
        final filtered = _searchSymbols(symbols.symbols, query);
        return right(SearchResponse(symbols: filtered));
      }

      return right(SearchResponse(symbols: symbols.symbols.take(3).toList()));
    } on ServiceException catch (e) {
      return left(Failure(e.message));
    }
  }

  List<Symbols> _searchSymbols(List<Symbols> symbols, String query) {
    return symbols
        .where((e) => e.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
