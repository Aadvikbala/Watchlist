part of 'watchlist_bloc.dart';

sealed class WatchlistState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class WatchlistInitial extends WatchlistState {}

final class WatchlistFetchFailure extends WatchlistState {
  final String message;

  WatchlistFetchFailure(this.message);

  @override
  List<Object?> get props => [message];
}

final class WatchlistFetchSuccess extends WatchlistState {
  final Watchlist watchlist;
  final int currentIndex;
  final bool isEditMode;

  WatchlistFetchSuccess({
    required this.watchlist,
    this.currentIndex = 0,
    this.isEditMode = false,
  });

  @override
  List<Object?> get props => [watchlist, currentIndex, isEditMode];

  WatchlistFetchSuccess copyWith({
    Watchlist? watchlist,
    int? currentIndex,
    bool? isEditMode,
  }) {
    return WatchlistFetchSuccess(
      watchlist: watchlist ?? this.watchlist,
      currentIndex: currentIndex ?? this.currentIndex,
      isEditMode: isEditMode ?? this.isEditMode,
    );
  }
}

final class WatchlistSymbolsFetchSuccess extends WatchlistState {
  final List<Symbols> symbols;

  WatchlistSymbolsFetchSuccess({required this.symbols});

  @override
  List<Object?> get props => [symbols];
}

final class WatchlistSymbolsFetchFailure extends WatchlistState {
  final String message;

  WatchlistSymbolsFetchFailure(this.message);

  @override
  List<Object?> get props => [message];
}
