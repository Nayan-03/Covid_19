import 'package:covid_19/model/appointment_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentWidget extends StatefulWidget {
  final Appointment appointment;
  const AppointmentWidget({Key? key, required this.appointment})
      : super(key: key);

  @override
  State<AppointmentWidget> createState() => _AppointmentWidgetState();
}

class _AppointmentWidgetState extends State<AppointmentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(107, 119, 154, 0.1),
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            widget.appointment.time,
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(107, 119, 154, 1),
            ),
          ),
        ),
        //),
      ),
    );
  }
}
