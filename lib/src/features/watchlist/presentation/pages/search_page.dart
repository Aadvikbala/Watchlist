import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/pages/app_search_bar.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/pages/symbols_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  static route() => MaterialPageRoute(builder: (context) => SearchPage());

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              AppSearchBar(),

              BlocBuilder<WatchlistBloc, WatchlistState>(
                buildWhen:
                    (previous, current) =>
                        current is WatchlistSymbolsFetchSuccess,
                builder: (context, state) {
                  switch (state) {
                    case WatchlistSymbolsFetchSuccess():
                      return Expanded(
                        child: SymbolsList(symbols: state.symbols),
                      );
                    default:
                      return Expanded(child: Text('ad'));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
