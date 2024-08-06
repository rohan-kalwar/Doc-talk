// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'home_page.dart';
import 'icons_page.dart';
import 'login_page.dart';
import 'routes.dart';
import "package:flutter/material.dart";

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name = "";
  String pass = "";
  bool changebutton = false;

  final formkey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if ((formkey.currentState!.validate())) {
      setState(() {
        changebutton = true;
      });
      // ignore: prefer_const_constructors
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
            key: formkey,
            child: Column(children: [
              Image.asset(
                "assets/images/undraw_welcome_cats_thqn.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Swagat Hai $name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                      },
                      onFieldSubmitted: (value) {
                        name = value;
                        setState(() {});
                      },
                      textInputAction: TextInputAction.next,
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length must be greater than 6";
                          } else {
                            pass = value;
                          }
                        },
                        textInputAction: TextInputAction.next),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Re-enter Password",
                          labelText: "Confirm password"),
                      validator: (value) {
                        if (value != pass) {
                          return "Both passwords donot match!";
                        }
                      },
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Material(
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => OptionsScreen()))),
                            child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changebutton ? 50 : 100,
                                height: 40,
                                alignment: Alignment.center,
                                // ignore: sort_child_properties_last
                                child: changebutton
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.redAccent,
                                      )
                                    : Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17),
                                      ),
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(
                                        changebutton ? 50 : 8))),
                          ),
                        )),
                    SizedBox(height: 20.0),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Material(
                            child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => LoginPage()))),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: 100,
                            height: 40,
                            alignment: Alignment.center,
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                border: Border.all(color: Colors.white)),
                          ),
                        )))
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
