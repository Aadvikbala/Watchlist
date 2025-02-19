part of 'watchlist_bloc.dart';

sealed class WatchlistEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class WatchlistFetched extends WatchlistEvent {}

final class WatchlistSymbolsFetched extends WatchlistEvent {
  final String text;

  WatchlistSymbolsFetched(this.text);

  @override
  List<Object?> get props => [text];
}

final class WatchlistEditModeChanged extends WatchlistEvent {
  final bool isEditMode;

  WatchlistEditModeChanged(this.isEditMode);

  @override
  List<Object?> get props => [isEditMode];
}
