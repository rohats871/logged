import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 115,
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
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
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(color: Colors.amberAccent, width: 1),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email_outlined),
                  hintText: "Email ID",
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 10),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 20),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.amberAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                child: Container(
                  child: const Center(
                      child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(color: Colors.amberAccent, width: 1),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
