import 'home_page.dart';
import 'icons_page.dart';
import 'login_page.dart';
import 'pallete.dart';
import 'routes.dart';
import 'sign_up.dart';
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
