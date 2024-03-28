import 'package:allen/home_page.dart';
import 'package:allen/icons_page.dart';
import 'package:allen/login_page.dart';
import 'package:allen/pallete.dart';
import 'package:allen/routes.dart';
import 'package:allen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Doc-Talk",
        theme: ThemeData.light(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Pallete.whiteColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Pallete.whiteColor,
          ),
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => SignUp(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.signupRoute: (context) => SignUp(),
          MyRoutes.IconRoute: (context) => OptionsScreen(),
        });
  }
}
