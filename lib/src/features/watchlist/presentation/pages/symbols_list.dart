import 'package:flutter/material.dart';
import 'package:watchlist_app/src/features/watchlist/data/models/watchlist_model.dart';

class SymbolsList extends StatefulWidget {
  const SymbolsList({super.key, required this.symbols});

  final List<Symbols> symbols;

  @override
  State<SymbolsList> createState() => _SymbolsListState();
}

class _SymbolsListState extends State<SymbolsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.symbols.length,
      itemBuilder: (context, index) {
        final item = widget.symbols[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Text(item.exchange),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                item.lastTradedPrice.toString(),
                style: TextStyle(
                  color: item.change.isNegative ? Colors.red : Colors.green,
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
        );
      },
    );
  }
}
