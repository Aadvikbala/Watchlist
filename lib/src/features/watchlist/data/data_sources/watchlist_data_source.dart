import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';

abstract interface class WatchlistDataSource {
  Future<Watchlist> fetchWatchlist();

  Future<SearchResponse> fetchSymbols();
}

class WatchlistDataSourceImpl implements WatchlistDataSource {
  @override
  Future<Watchlist> fetchWatchlist() async {
    return Future.value(watchlist);
  }

  @override
  Future<SearchResponse> fetchSymbols() async {
    return Future.value(symbols);
  }
}

// Mock:
final watchlist = Watchlist.fromMap({
  'watchlist': [
    {
      'id': '1',
      'name': 'Nifty 50',
      'symbols': [
        {
          'name': 'TCS',
          'exchange': 'NSE',
          'lastTradedPrice': 1234.56,
          'change': 12.34,
          'changePercentage': 1.2,
        },
        {
          'name': 'ITC',
          'exchange': 'BSE',
          'lastTradedPrice': 1234.56,
          'change': 12.34,
          'changePercentage': 1.2,
        },
      ],
    },
    {
      'id': '2',
      'name': 'Nifty 100',
      'symbols': [
        {
          'name': 'ITC',
          'exchange': 'BSE',
          'lastTradedPrice': 1234.56,
          'change': 12.34,
          'changePercentage': 1.2,
        },
        {
          'name': 'TCS',
          'exchange': 'NSE',
          'lastTradedPrice': 1234.56,
          'change': 12.34,
          'changePercentage': 1.2,
        },
      ],
    },
  ],
});

final symbols = SearchResponse.fromMap({
  'symbols': [
    {
      'name': 'TCS',
      'exchange': 'NSE',
      'lastTradedPrice': 1234.56,
      'change': 12.34,
      'changePercentage': 1.2,
    },
    {
      'name': 'INFY',
      'exchange': 'NSE',
      'lastTradedPrice': 1456.78,
      'change': -5.67,
      'changePercentage': -0.39,
    },
    {
      'name': 'RELIANCE',
      'exchange': 'BSE',
      'lastTradedPrice': 2500.12,
      'change': 8.90,
      'changePercentage': 0.36,
    },
    {
      'name': 'IRTC',
      'exchange': 'NSE',
      'lastTradedPrice': 2500.12,
      'change': 8.90,
      'changePercentage': 0.36,
    },
    {
      'name': 'TATAGOLD',
      'exchange': 'NSE',
      'lastTradedPrice': 2500.12,
      'change': 8.90,
      'changePercentage': 0.36,
    },
  ],
});
