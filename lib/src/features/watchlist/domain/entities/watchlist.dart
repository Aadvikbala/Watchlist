class Watchlist {
  final List<WatchlistItem> watchlist;

  Watchlist({required this.watchlist});
}

class WatchlistItem {
  final String id;
  final String name;
  final List<Symbols> symbols;

  WatchlistItem({required this.id, required this.name, required this.symbols});
}

class Symbols {
  final String name;
  final String exchange;
  final double lastTradedPrice;
  final double change;
  final double changePercentage;

  Symbols({
    required this.name,
    required this.exchange,
    required this.lastTradedPrice,
    required this.change,
    required this.changePercentage,
  });
}
