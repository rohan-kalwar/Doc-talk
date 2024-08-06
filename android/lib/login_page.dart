// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last

import 'routes.dart';
import 'sign_up.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if ((formkey.currentState!.validate())) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.IconRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
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
                    // ignore: body_might_complete_normally_nullable
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      }
                      if (value.length < 6) {
                        return "Password length must be greater than 6";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Material(
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton ? 50 : 100,
                            height: 40,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(
                                    changebutton ? 50 : 8))),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Material(
                          child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUp()))),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: 100,
                          height: 40,
                          alignment: Alignment.center,
                          // ignore: sort_child_properties_last
                          child: Text(
                            "SignUp",
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
                ]),
              )
            ],
          ),
        )));
  }
}
