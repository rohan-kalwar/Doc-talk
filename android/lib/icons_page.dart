// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'option1_page.dart';
import 'option2_page.dart';
import 'option4_page.dart';
import 'option5_page.dart';
import 'option6_page.dart';
import 'option7_page.dart';
import 'option8_page.dart';
import 'option9_page.dart';

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  final List<String> options = [
    'An 8-year old kid',
    'A Teenage Guy',
    'A Teenage Girl',
    'A Young Girl',
    'A Young Boy',
    'A Middle-aged Guy',
    'A Middle-aged lady',
    'An Old Man',
    'An Old Lady',
  ];

  final List<Widget> pages = [
    Option1Page(),
    Option2Page(),
    HomePage(),
    Option4Page(),
    Option5Page(),
    Option6Page(),
    Option7Page(),
    Option8Page(),
    Option9Page(),
  ];

  List<Color> colors = [];

  @override
  void initState() {
    super.initState();
    generateRandomColors();
  }

  void generateRandomColors() {
    final Random random = Random();
    colors = List.generate(options.length, (index) {
      return Color.fromARGB(
          255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount = 2;
    double crossAxisSpacing = 10.0;
    double mainAxisSpacing = 10.0;
    double itemWidth = (screenWidth - (crossAxisCount - 1) * crossAxisSpacing) /
        crossAxisCount;
    double itemHeight = itemWidth;

    return Scaffold(
        appBar: AppBar(
          title: Text('Select an Option: '),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: crossAxisSpacing,
              mainAxisSpacing: mainAxisSpacing,
              childAspectRatio: itemWidth / itemHeight),
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            bool isHovered = false;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: MouseRegion(
                  onHover: (event) {
                    setState(() {
                      isHovered = true;
                    });
                  },
                  child: Card(
                    color: colors[index],
                    shadowColor: colors[index],
                    // ignore: dead_code
                    elevation: isHovered ? 10 : 5,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        options[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    )),
                  )),
            );
          },
        ));
  }
}
