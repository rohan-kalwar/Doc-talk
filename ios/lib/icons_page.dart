import 'package:allen/home_page.dart';
import 'package:allen/option4_page.dart';
import 'package:allen/option5_page.dart';
import 'package:allen/option6_page.dart';
import 'package:allen/option7_page.dart';
import 'package:allen/option8_page.dart';
import 'package:allen/option9_page.dart';
import 'package:flutter/material.dart';

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an Option: '),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('An 8-year old kid.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option1Page()),
              );
            },
          ),
          ListTile(
            title: Text('A Teenage Guy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option2Page()),
              );
            },
          ),
          ListTile(
            title: Text('A Teenage Girl'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text('A Young Girl'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option4Page()),
              );
            },
          ),
          ListTile(
            title: Text('A Young Boy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option5Page()),
              );
            },
          ),
          ListTile(
            title: Text('A  Middle-aged Guy '),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option6Page()),
              );
            },
          ),
          ListTile(
            title: Text('A Middle-aged lady'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option7Page()),
              );
            },
          ),
          ListTile(
            title: Text('An Old Man'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option8Page()),
              );
            },
          ),
          ListTile(
            title: Text('An Old Lady'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Option9Page()),
              );
            },
          ),
          // Add more options as needed
        ],
      ),
    );
  }
}

class Option1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Option 1 Page'),
      ),
      body: Center(
        child: Text('This is Option 1 Page content.'),
      ),
    );
  }
}

class Option2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Option 2 Page'),
      ),
      body: Center(
        child: Text('This is Option 2 Page content.'),
      ),
    );
  }
}

class Option3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Option 3 Page'),
      ),
      body: Center(
        child: Text('This is Option 3 Page content.'),
      ),
    );
  }
}
