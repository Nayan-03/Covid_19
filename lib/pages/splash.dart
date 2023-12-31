// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:covid_19/pages/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //_navigatorhome();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Homepage(),
        ),
      ),
    );
  }

  // _navigatorhome() async {
  //   await Future.delayed( const Duration(seconds: 2), () {});
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => const Homepage()));
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Text(
          "Covid_19\nHealthcare",
          style: TextStyle(
              fontSize: 40.0, color: Colors.white, fontFamily: "Quando"),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
