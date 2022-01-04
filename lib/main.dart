// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:visongallery/routes/routes.dart';
import 'package:visongallery/screens/home.dart';
import 'package:visongallery/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visongallery',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => Login(),
        Routes.homeRoute: (context) => Home(),
        Routes.loginRoute: (context) => Login(),
      },
    );
  }
}
