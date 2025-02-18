import 'package:flutter/material.dart';

void namedParamsFuncTwoLists({List<String>? list1, List<String>? list2}) {}

void namedParamsFuncListThenString({List<String>? list, String? string}) {}

void positionalParamsFuncTwoLists(List<String>? list1, List<String>? list2) {}

void positionalParamsFuncListThenString(List<String>? list, String? string) {}

void positionalParamsFuncStringThenList(String? string, List<String>? list) {}

void positionalParamsTwoStrings(String? string1, String? string2) {}

void main() {
  namedParamsFuncTwoLists(list1: [], list2: []);
  namedParamsFuncTwoLists(
    list1: ['This is a very long string that exceeds the 80 character limit as a list item.'],
    list2: [],
  );

  namedParamsFuncListThenString(
    list: ['This is a very long string that exceeds the 80 character limit as a list item.'],
    string: '',
  );

  positionalParamsFuncTwoLists([], []);

  // no warning
  positionalParamsFuncTwoLists(['This is a very long string that exceeds the 80 character limit as a list item.'], []);

  positionalParamsFuncListThenString([], '');

  positionalParamsFuncListThenString([
    'This is a very long string that exceeds the 80 character limit as a list item.',
    // `require_trailing_commas` warns here
  ], '');

  positionalParamsFuncStringThenList(
    'This is a very long string that exceeds the 80 character limit as a list item.',
    [],
  );

  positionalParamsTwoStrings('This is a very long string that exceeds the 80 character limit as a list item.', '');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: Center(child: Text('Hello World!'))));
  }
}
