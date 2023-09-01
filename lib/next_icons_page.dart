// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String iconName;

  NextPage(this.iconName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/icon1.png', // You can change this to the appropriate asset path
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              iconName,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
