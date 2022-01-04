// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:visongallery/widget/appbar.dart';
// import 'package:lottie/lottie.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'Asset/Images/logo3.png',
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Sign In with phone Number',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter phone Number ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefix: Text('+880 '),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Verification code'),
                          content: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter verification code',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Verify'),
                            ),
                          ],
                        );
                      });
                },
                //color: Colors.pink,
                child: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.pink,
                  size: 50,
                  semanticLabel: 'Next',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'Or',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                'Sign in with social media or gmail',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.facebook_outlined,
                      size: 50,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.mail_outline,
                      size: 50,
                      //color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
