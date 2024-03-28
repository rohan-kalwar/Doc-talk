import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatelessWidget {
  final List<String> options = [
    'A 5-year old kid',
    'A Teenage Guy',
    'A Teenage Girl',
    'A middle aged woman',
    'A middle aged man',
    'An old lady',
    'An old uncle',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an Option'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            onTap: () {
              // Handle option selection here
              _handleOptionSelection(context, options[index]);
            },
          );
        },
      ),
    );
  }

  void _handleOptionSelection(BuildContext context, String selectedOption) {
    // You can perform actions based on the selected option here
    // For example, you can navigate to a different screen or perform some task.

    // In this example, we'll simply show a dialog to indicate the selected option.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selected Option'),
          content: Text('You selected: $selectedOption'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
