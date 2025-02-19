class Watchlist {
  final List<WatchlistItem> watchlist;

  Watchlist({required this.watchlist});

  factory Watchlist.fromMap(Map<String, dynamic> map) {
    return Watchlist(
      watchlist:
          (map['watchlist'] as List<dynamic>)
              .map((item) => WatchlistItem.fromMap(item))
              .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {'watchlist': watchlist.map((item) => item.toMap()).toList()};
  }
}

class WatchlistItem {
  final String id;
  final String name;
  final List<Symbols> symbols;

  WatchlistItem({required this.id, required this.name, required this.symbols});

  factory WatchlistItem.fromMap(Map<String, dynamic> map) {
    return WatchlistItem(
      id: map['id'],
      name: map['name'],
      symbols:
          (map['symbols'] as List<dynamic>)
              .map((symbol) => Symbols.fromMap(symbol))
              .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'symbols': symbols.map((symbol) => symbol.toMap()).toList(),
    };
  }
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

  factory Symbols.fromMap(Map<String, dynamic> map) {
    return Symbols(
      name: map['name'],
      exchange: map['exchange'],
      lastTradedPrice: map['lastTradedPrice'],
      change: map['change'],
      changePercentage: map['changePercentage'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'exchange': exchange,
      'lastTradedPrice': lastTradedPrice,
      'change': change,
      'changePercentage': changePercentage,
    };
  }
}

class SearchResponse {
  final List<Symbols> symbols;

  SearchResponse({required this.symbols});

  factory SearchResponse.fromMap(Map<String, dynamic> map) {
    return SearchResponse(
      symbols:
          (map['symbols'] as List<dynamic>)
              .map((item) => Symbols.fromMap(item))
              .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {'watchlist': symbols.map((item) => item.toMap()).toList()};
  }
}
