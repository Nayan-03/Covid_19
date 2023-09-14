import 'package:covid_19/utills/routes.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class NewAppointment extends StatefulWidget {
  const NewAppointment({super.key});

  @override
  State<NewAppointment> createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, left: 27.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(241, 244, 247, 1),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1.0,
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, MyRoutes.doctordetailRoute);
                      },
                      icon: const Icon(
                        Icons.arrow_back_sharp,
                        color: Color.fromRGBO(34, 43, 69, 1),
                      ),
                      splashRadius: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0, left: 85.0),
                  child: Center(
                    child: Text(
                      "New Appointment",
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: const Color.fromRGBO(34, 43, 69, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27.0, top: 10.0),
                  child: Row(
                    children: [
                      Text(
                        DateFormat.yMMM().format(DateTime.now()),
                        style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(34, 43, 69, 1)),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        splashRadius: 1.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27.0, top: 10.0),
                  child: DatePicker(
                    DateTime.now(),
                    height: 100.0,
                    width: 80.0,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: const Color.fromRGBO(62, 100, 255, 1),
                    selectedTextColor: Colors.white,
                    dateTextStyle: GoogleFonts.poppins(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(107, 119, 154, 1)),
                    dayTextStyle: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(107, 119, 154, 1)),
                    monthTextStyle: GoogleFonts.poppins(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(107, 119, 154, 1)),
                    onDateChange: (date) {
                      selectedDate = date;
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
