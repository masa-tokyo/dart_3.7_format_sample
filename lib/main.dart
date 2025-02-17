import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    namedArgFunc(callback: () => null, keys: []);

    positionalArgFunc(() => null, []);

    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}

void namedArgFunc({
  required Object? Function() callback,
  required List<Object> keys,
}) {
  callback();
}

void positionalArgFunc(Object? Function() callback, List<Object> keys) {
  callback();
}
