import 'package:covid_19/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
