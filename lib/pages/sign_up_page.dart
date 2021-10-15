import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:trialapp/pages/user_screen.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'sign_up_page';

  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 30,right: 30,bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email_outlined),
                  hintText: "Email ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 10),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              /// PASSWORD TEXT FIELD
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 20),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded),
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 20),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, UserScreen.id);
                },
                child: Container(
                  child: const Center(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(color: Colors.amberAccent, width: 1),
                    borderRadius: BorderRadius.circular(30),
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
