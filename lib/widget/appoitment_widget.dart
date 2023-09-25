import 'package:covid_19/model/appointment_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../comoon/globals.dart' as globals;

class AppointmentWidget extends StatefulWidget {
  final Appointment appointment;
  const AppointmentWidget({Key? key, required this.appointment})
      : super(key: key);

  @override
  State<AppointmentWidget> createState() => _AppointmentWidgetState();
}

class _AppointmentWidgetState extends State<AppointmentWidget> {
  bool visibilityColor = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: GestureDetector(
          onTap: () {
            widget.appointment.isSelected = !widget.appointment.isSelected;
            if (widget.appointment.isSelected) {
              globals.appointment.add(widget.appointment.time);
            } else {
              globals.appointment.remove(widget.appointment.time);
            }

            setState(() {
              visibilityColor = !visibilityColor;
            });
          },
          child: Container(
            height: 40.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: visibilityColor
                  ? const Color.fromRGBO(62, 100, 255, 1)
                  : Colors.white,
              border: Border.all(
                color: visibilityColor
                    ? const Color.fromRGBO(62, 100, 255, 1)
                    : const Color.fromRGBO(107, 119, 154, 0.2),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                widget.appointment.time,
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: visibilityColor
                      ? Colors.white
                      : const Color.fromRGBO(107, 119, 154, 1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
