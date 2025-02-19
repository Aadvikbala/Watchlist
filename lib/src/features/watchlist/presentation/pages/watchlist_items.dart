import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/bloc/watchlist_bloc.dart';

class WatchlistItems extends StatefulWidget {
  const WatchlistItems({
    super.key,
    required this.symbols,
    this.onLongPress,
    required this.watchlistItem,
  });

  final List<Symbols> symbols;
  final WatchlistItem watchlistItem;
  final void Function()? onLongPress;

  @override
  State<WatchlistItems> createState() => _WatchlistItemsState();
}

class _WatchlistItemsState extends State<WatchlistItems> {
  late List<Symbols> _symbols = widget.watchlistItem.symbols;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchlistBloc, WatchlistState>(
      buildWhen: (previous, current) => current is WatchlistFetchSuccess,
      builder: (context, state) {
        if (state is WatchlistFetchSuccess) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ReorderableListView.builder(
                  onReorder: (oldIndex, newIndex) {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    if (oldIndex == newIndex) return;

                    final updated = List<Symbols>.from(_symbols);
                    final item = updated.removeAt(oldIndex);
                    updated.insert(newIndex, item);

                    setState(() => _symbols = updated);
                  },
                  itemCount: _symbols.length,
                  itemBuilder: (context, index) {
                    final item = _symbols[index];
                    return Material(
                      key: ValueKey(widget.symbols[index].name),
                      child: ListTile(
                        onLongPress:
                            !state.isEditMode ? widget.onLongPress : null,
                        leading:
                            state.isEditMode ? Icon(Icons.drag_handle) : null,
                        title: Text(item.name),
                        subtitle: Text(item.exchange),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              item.lastTradedPrice.toString(),
                              style: TextStyle(
                                color:
                                    item.change.isNegative
                                        ? Colors.red
                                        : Colors.green,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(item.change.isNegative ? '-' : '+'),
                                Text(item.change.toString()),
                                SizedBox(width: 4),
                                Text('(${item.changePercentage.toString()})%'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (state.isEditMode)
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                      ),
                      onPressed: () {
                        context.read<WatchlistBloc>().add(
                          WatchlistEditModeChanged(false),
                        );
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          );
        }

        return SizedBox.shrink();
      },
    );
  }
}
