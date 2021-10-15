import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trialapp/pages/sign_in_page.dart';
import 'package:trialapp/pages/sign_up_page.dart';
import 'package:trialapp/pages/user_screen.dart';

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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: SignInPage.id,
      routes: {
        SignInPage.id: (context)=> const SignInPage(),
        SignUpPage.id: (context)=> SignUpPage(),
        UserScreen.id: (context)=> const UserScreen(),

      },
    );
  }
}
