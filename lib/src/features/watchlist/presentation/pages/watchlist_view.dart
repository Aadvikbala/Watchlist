import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/pages/search_page.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/pages/watchlist_items.dart';

class WatchlistView extends StatefulWidget {
  const WatchlistView({super.key, required this.watchlist});

  final List<WatchlistItem> watchlist;

  @override
  State<WatchlistView> createState() => _WatchlistViewState();
}

class _WatchlistViewState extends State<WatchlistView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: widget.watchlist.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: DefaultTabController(
              length: widget.watchlist.length,
              child: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                controller: _controller,
                tabs: widget.watchlist.map((e) => Tab(text: e.name)).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: kToolbarHeight,
              child: TextField(
                onTap: () => Navigator.push(context, SearchPage.route()),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Search and Add',
                ),
              ),
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                ...widget.watchlist.map(
                  (e) => WatchlistItems(
                    watchlistItem: e,
                    symbols: e.symbols,
                    onLongPress: () {
                      context.read<WatchlistBloc>().add(
                        WatchlistEditModeChanged(true),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
