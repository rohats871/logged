import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:line_icons/line_icons.dart';
import 'sign_in_page.dart';

class UserScreen extends StatefulWidget {
  static const String id = 'user_screen';

  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(top: false,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange,
          elevation: 0,
          title: Text("Logged in"),
          leading: IconButton(icon: Icon(LineIcons.angleLeft), onPressed: () {
            Navigator.popAndPushNamed(context, SignInPage.id);
          },),
        ),
        body: Container(
          color: Colors.orange,
        ),
      ),
    );
  }
}
