import 'package:flutter/material.dart';

void namedParamsFuncTwoLists({List<String>? list1, List<String>? list2}) {}

void positionalParamsFuncTwoLists(List<String>? list1, List<String>? list2) {}

void positionalParamsFuncListThenString(List<String>? list, String? string) {}

void positionalParamsFuncStringThenList(String? string, List<String>? list) {}

void positionalParamsFuncTwoStrings(String? string1, String? string2) {}

void main() {
  namedParamsFuncTwoLists(list1: [], list2: []);
  namedParamsFuncTwoLists(
    list1: [
      'This is a very long string that exceeds the 80 character limit as a list item.',
    ],
    list2: [],
  );

  positionalParamsFuncTwoLists([], []);

  positionalParamsFuncTwoLists([
    'This is a very long string that exceeds the 80 character limit as a list item.',
    // `require_trailing_commas` cautions here
  ], []);

  positionalParamsFuncListThenString([
    'This is a very long string that exceeds the 80 character limit as a list item.',
    // `require_trailing_commas` cautions here
  ], '');

  positionalParamsFuncStringThenList(
    'This is a very long string that exceeds the 80 character limit as a list item.',
    [],
  );

  positionalParamsFuncTwoStrings(
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
