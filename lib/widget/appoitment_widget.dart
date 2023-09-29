import 'package:covid_19/model/appointment_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppointmentWidget extends StatefulWidget {
  //final Appointment appointment;
  const AppointmentWidget({Key? key}) : super(key: key);

  @override
  State<AppointmentWidget> createState() => _AppointmentWidgetState();
}

class _AppointmentWidgetState extends State<AppointmentWidget> {
  bool visibilityColor = true;

  final List<String> time = [
    "09:00 AM",
    "09:30 AM",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "12:00 PM",
    "12:30 PM",
    "01:30 PM",
    "02:00 PM",
    "02:30 PM",
    "03:00 PM",
    "04:30 PM",
    "05:00 PM",
    "05:30 PM",
    "06:00 PM"
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          visibilityColor = !visibilityColor;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: visibilityColor
              ? Colors.white
              : const Color.fromRGBO(62, 100, 255, 1),
          border: Border.all(
            color: visibilityColor
                ? const Color.fromRGBO(107, 119, 154, 0.2)
                : const Color.fromRGBO(62, 100, 255, 1),
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            "9:00 AM",
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: visibilityColor
                  ? const Color.fromRGBO(107, 119, 154, 1)
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
