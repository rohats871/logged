import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:trialapp/pages/sign_in_page.dart';
import 'package:trialapp/pages/sign_up_page.dart';
import 'package:trialapp/pages/user_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late dynamic initPage;
  final FirebaseAuth auth = FirebaseAuth.instance;
  late User currentUser;

  @override
  void initState() {
    super.initState();
    try {
      currentUser = auth.currentUser!;
      if (currentUser != null) {
        initPage = UserScreen.id;
      } else {
        initPage = SignInPage.id;
      }
    } catch (e) {
      print(e);
      initPage = SignUpPage.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initPage,
      routes: {
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
        UserScreen.id: (context) => UserScreen(),
      },
    );
  }
}
