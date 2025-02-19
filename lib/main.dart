import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_app/injections.dart';
import 'package:watchlist_app/src/core/theme/theme.dart';
import 'package:watchlist_app/src/core/theme/util.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:watchlist_app/src/features/watchlist/presentation/pages/watchlist_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<WatchlistBloc>())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context, "Inter", "Inter");
    final theme = MaterialTheme(textTheme);

    return MaterialApp(
      theme: theme.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onTap(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),

      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.onPrimaryContainer,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
      ),
    );
  }

  static final List<Widget> _pages = <Widget>[
    WatchlistPage(),
    Center(child: Text('Orders')),
    Center(child: Text('Portfolio')),
    Center(child: Text('Movers')),
    Center(child: Text('More')),
  ];

  List<BottomNavigationBarItem> get _bottomItems {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Watchlist'),
      BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Orders'),
      BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Portfolio'),
      BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Movers'),
      BottomNavigationBarItem(icon: Icon(Icons.more_outlined), label: 'More'),
    ];
  }
}
