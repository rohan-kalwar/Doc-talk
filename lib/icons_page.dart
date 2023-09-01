// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'young_avatar.dart';

class IconPage extends StatefulWidget {
  @override
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  // Define a list of icon names and their corresponding asset paths
  List<Map<String, String>> icons = [
    {'name': 'Tanvi Ahuja', 'asset': 'assets/images/Young-woman.png'},
    {'name': 'Kenneth Bayer', 'asset': 'assets/images/Middle-Aged-Guy.png'},
    {'name': 'Sangeeta Chatterjee', 'asset': 'assets/images/Old-Lady.png'},
    // Add more icons here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clickable Icons'),
      ),
      body: ListView.builder(
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                // Navigate to the next page when a card is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              leading: Image.asset(
                icons[index]['asset']!,
                width: 50,
                height: 50,
              ),
              title: Text(icons[index]['name']!),
            ),
          );
        },
      ),
    );
  }
}
