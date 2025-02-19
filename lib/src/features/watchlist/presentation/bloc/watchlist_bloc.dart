import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:watchlist_app/src/core/usecase/usecase.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';
import 'package:watchlist_app/src/features/watchlist/domain/usecases/fetch_symbols.dart';
import 'package:watchlist_app/src/features/watchlist/domain/usecases/fetch_watchlist.dart';

part 'watchlist_event.dart';
part 'watchlist_state.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final FetchWatchlist _fetchWatchlist;
  final FetchSymbols _fetchSymbols;

  WatchlistBloc(this._fetchWatchlist, this._fetchSymbols)
    : super(WatchlistInitial()) {
    on<WatchlistFetched>(_onWatchlistFetched);
    on<WatchlistSymbolsFetched>(_onSymbolsFetched);
    on<WatchlistEditModeChanged>(_onEditModeChanged);
  }

  FutureOr<void> _onSymbolsFetched(
    WatchlistSymbolsFetched event,
    Emitter<WatchlistState> emit,
  ) async {
    final res = await _fetchSymbols(event.text);

    res.fold(
      (l) => emit(WatchlistSymbolsFetchFailure(l.message)),
      (r) => emit(WatchlistSymbolsFetchSuccess(symbols: r.symbols)),
    );
  }

  FutureOr<void> _onWatchlistFetched(
    WatchlistFetched event,
    Emitter<WatchlistState> emit,
  ) async {
    final res = await _fetchWatchlist(NoParams());

    res.fold(
      (l) => emit(WatchlistFetchFailure(l.message)),
      (r) => emit(WatchlistFetchSuccess(watchlist: r)),
    );
  }

  FutureOr<void> _onEditModeChanged(
    WatchlistEditModeChanged event,
    Emitter<WatchlistState> emit,
  ) async {
    if (state is WatchlistFetchSuccess) {
      emit(
        WatchlistFetchSuccess(
          watchlist: (state as WatchlistFetchSuccess).watchlist,
          isEditMode: event.isEditMode,
        ),
      );
    }
  }
}
