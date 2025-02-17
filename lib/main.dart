import 'package:flutter/material.dart';

void main() {
  namedArgFunc(callback: () => null, keys: []);
  namedArgFunc(
    callback: () {
      return null;
    },
    keys: [],
  );

  positionalArgFunc(() => null, []);
  positionalArgFunc(() {
    return null;
    // `require_trailing_commas` warns here:
    // https://dart.dev/tools/linter-rules/require_trailing_commas
  }, []);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}

void namedArgFunc({Object? Function()? callback, List<Object>? keys}) {
  callback?.call();
}

void positionalArgFunc(Object? Function()? callback, List<Object>? keys) {
  callback?.call();
}
