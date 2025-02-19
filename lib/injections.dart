import 'package:get_it/get_it.dart';
import 'package:watchlist_app/src/features/watchlist/data/data_sources/watchlist_data_source.dart';
import 'package:watchlist_app/src/features/watchlist/data/repositories/watchlist_repository_impl.dart';
import 'package:watchlist_app/src/features/watchlist/domain/repository/watchlist_repository.dart';
import 'package:watchlist_app/src/features/watchlist/domain/usecases/fetch_symbols.dart';
import 'package:watchlist_app/src/features/watchlist/domain/usecases/fetch_watchlist.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/bloc/watchlist_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  _initWatchlist();
}

void _initWatchlist() {
  sl
    ..registerFactory<WatchlistDataSource>(() => WatchlistDataSourceImpl())
    ..registerFactory<WatchlistRepository>(() => WatchlistRepositoryImpl(sl()))
    ..registerFactory<FetchWatchlist>(() => FetchWatchlist(sl()))
    ..registerFactory<FetchSymbols>(() => FetchSymbols(sl()))
    ..registerLazySingleton<WatchlistBloc>(() => WatchlistBloc(sl(), sl()));
}
