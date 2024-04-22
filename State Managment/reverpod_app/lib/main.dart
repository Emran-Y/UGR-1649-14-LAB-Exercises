import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MyNewApp()),
  );
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyNewHomePage(title: 'Counter Riverpod'),
    );
  }
}

/// Providers are declared globally and specify how to create a state
final newCounterProvider = StateProvider<int>((ref) => 0);

class MyNewHomePage extends StatelessWidget {
  MyNewHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have clicked the button this many times:',
            ),
            Consumer(
              builder: (context, watch, child) => Text(
                '${watch(newCounterProvider).state}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => context.read(newCounterProvider).state++,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10), // Spacer between buttons
          FloatingActionButton(
            onPressed: () => context.read(newCounterProvider).state--,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
