import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/pages/watchlist_view.dart';

class WatchlistPage extends StatefulWidget {
  const WatchlistPage({super.key});

  static route() =>
      MaterialPageRoute(builder: (context) => const WatchlistPage());

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  @override
  void initState() {
    super.initState();

    context.read<WatchlistBloc>().add(WatchlistFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<WatchlistBloc, WatchlistState>(
          buildWhen: (previous, current) => current is WatchlistFetchSuccess,
          builder: (context, state) {
            switch (state) {
              case WatchlistFetchFailure():
                return Center(child: Text(state.message));

              case WatchlistFetchSuccess():
                return WatchlistView(watchlist: state.watchlist.watchlist);

              default:
                return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
