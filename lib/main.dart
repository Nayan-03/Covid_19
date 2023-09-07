import 'package:covid_19/home.dart';
import 'package:covid_19/splash.dart';
import 'package:covid_19/utills/routes.dart';
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
            //scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.blue),
        initialRoute: MyRoutes.splashroute,
        routes: {
          "/": (context) => const SplashScreen(),
          MyRoutes.homeRoute: (context) => const Homepage(),
        });
  }
}
