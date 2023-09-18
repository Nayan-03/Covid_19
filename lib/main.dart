import 'package:covid_19/pages/chatpage.dart';
import 'package:covid_19/pages/doctor.dart';
import 'package:covid_19/pages/doctor_detail.dart';
import 'package:covid_19/pages/home.dart';
import 'package:covid_19/pages/new_appointment.dart';
import 'package:covid_19/pages/splash.dart';
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
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: MyRoutes.chatpageRoute,
        routes: {
         // "/": (context) => const SplashScreen(),
          MyRoutes.splashroute: (context) => const SplashScreen(),
          MyRoutes.homeRoute: (context) => const Homepage(),
          MyRoutes.doctorRoute: (context) => const Doctorpage(),
          MyRoutes.doctordetailRoute: (context) => const DoctorDetailpage(),
          MyRoutes.newappointmentRoute: (context) => const NewAppointment(),
          MyRoutes.chatpageRoute: (context) => const Chatpage(),
      
        });
  }
}
