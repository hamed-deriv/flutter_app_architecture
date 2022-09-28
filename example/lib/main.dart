import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: Scaffold(
          appBar: AppBar(elevation: 0, title: const Text('Flutter Demo')),
          body: const Center(child: Text('Flutter Demo Home Page')),
        ),
      );
}
