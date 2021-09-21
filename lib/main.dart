//import 'dart:html';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mr_invoice/splash_screen.dart';
import 'package:provider/provider.dart';

import './auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = Color(0xffdfe1e5); // grey
    final primaryColor = Color(0xff2C7CB7); //blue
    final secondaryColor = Color(0xff001D35); // form letter black
    final thirdColor = Color(0xff707070); // other letter black

    return MaterialApp(
      title: 'Mr Invoice',
      theme: ThemeData(
          fontFamily: 'Volkswagen-Serial',
          primarySwatch: Colors.blue,
          backgroundColor: backgroundColor,
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(fontSize: 18, color: primaryColor),
              headline5: TextStyle(color: thirdColor),
              subtitle1: TextStyle(fontSize: 16, color: secondaryColor),
              subtitle2: TextStyle(fontSize: 14, color: secondaryColor))),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: SplashScreen(),
        nextScreen: AuthScreen(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
