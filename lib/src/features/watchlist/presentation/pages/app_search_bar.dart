import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/bloc/watchlist_bloc.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({super.key});

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  @override
  void initState() {
    _onChanged('');
    super.initState();
  }

  void _onChanged(String text) {
    context.read<WatchlistBloc>().add(WatchlistSymbolsFetched(text));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: kToolbarHeight,
        child: TextField(
          autofocus: true,
          onChanged: _onChanged,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            hintText: 'Search and Add',
          ),
        ),
      ),
    );
  }
}
