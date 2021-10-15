import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:trialapp/pages/user_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'sign_up_page';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          elevation: 0,
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),

              ///Email id text field aqui
              TextField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
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
              const SizedBox(
                height: 30,
              ),

              /// PASSWORD TEXT FIELD
              TextField(
                onChanged: (value) {
                  email = value;
                },
                obscureText: true,
                decoration: const InputDecoration(
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
              const SizedBox(
                height: 5,
              ),

              ///confirm password
             SizedBox(
                height: 20,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                  try {
                    final newUSer = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if(newUSer != null){
                      Navigator.pushNamed(context, UserScreen.id);
                    }
                  }catch(e){
                    print(e);
                  }
                },
                child: Container(
                  child: const Center(
                      child: Text(
                    "Register",
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
