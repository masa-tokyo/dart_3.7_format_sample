import 'package:flutter/material.dart';

void namedArgFunc({List<String>? list1, List<String>? list2}) {}

void namedArgFuncListFirst({List<String>? list, String? string}) {}

void positionalArgFunc(List<String>? list1, List<String>? list2) {}

void positionalArgFuncListFirst(List<String>? list, String? string) {}

void positionalArgFuncListLast(String? string, List<String>? list) {}

void positionalArgFuncString(String? string1, String? string2) {}

void main() {
  namedArgFunc(list1: [], list2: []);
  namedArgFunc(
    list1: [
      'This is a very long string that exceeds the 80 character limit as a list item.',
    ],
    list2: [],
  );

  namedArgFuncListFirst(
    list: [
      'This is a very long string that exceeds the 80 character limit as a list item.',
    ],
    string: '',
  );

  positionalArgFunc([], []);

  positionalArgFunc([
    'This is a very long string that exceeds the 80 character limit as a list item.',
    // `require_trailing_commas` warns here
  ], []);

  positionalArgFuncListFirst([], '');

  positionalArgFuncListFirst([
    'This is a very long string that exceeds the 80 character limit as a list item.',
    // `require_trailing_commas` warns here
  ], '');

  positionalArgFuncListLast(
    'This is a very long string that exceeds the 80 character limit as a list item.',
    [],
  );

  positionalArgFuncString(
    'This is a very long string that exceeds the 80 character limit as a list item.',
    '',
  );

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
