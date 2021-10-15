import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trialapp/pages/sign_up_page.dart';
import 'package:trialapp/pages/user_screen.dart';

class SignInPage extends StatefulWidget {
  static const String id = 'sign_in_page';

  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.amberAccent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 15,bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /// BUTTON TO LOGIN USING GOOGLE ACCOUNT
              MaterialButton(
                elevation: 5,
                onPressed: () {
                  Navigator.pushNamed(context, UserScreen.id);
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      "Log In Using Google",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(color: Colors.amberAccent, width: 1),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              /// EMAIL TEXT FIELD
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email_outlined),
                  hintText: "Email ID",
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 10),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              /// PASSWORD TEXT FIELD
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 20),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),

              /// FORGOT PASSWORD BUTTON
              const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.amberAccent,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              /// LOG IN BUTTON STARTS HERE
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, UserScreen.id);
                },
                child: Container(
                  child: const Center(
                      child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )),
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(color: Colors.amberAccent),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),

              /// USE THIS BUTTON TO SIGN UP
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpPage.id);
                },
                child: const Text(
                  "Sign Up..?",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
