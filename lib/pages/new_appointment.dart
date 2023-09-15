import 'dart:convert';

import 'package:covid_19/model/appointment_model.dart';
import 'package:covid_19/utills/routes.dart';
import 'package:covid_19/widget/appoitment_widget.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class NewAppointment extends StatefulWidget {
  const NewAppointment({super.key});

  @override
  State<NewAppointment> createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
  DateTime selectedDate = DateTime.now();

  bool visibilitycolor = true;

  @override
  void initState() {
    super.initState();
    appointmentData();
  }

  appointmentData() async {
    final appointmentjson =
        await rootBundle.loadString("assets/files/appointment.json");
    final decodedData = jsonDecode(appointmentjson);
    var appointmentData = decodedData["appoitment"];
    AppointmentModel.appointment = List.from(appointmentData)
        .map<Appointment>((appoitment) => Appointment.fromMap(appoitment))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                children: [
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
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
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
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
              const SizedBox(height: 27.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: Text(
                  "Available time",
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    color: const Color.fromRGBO(34, 43, 69, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 21.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: AppointmentModel.appointment.length,
                    itemBuilder: (context, index) {
                      return AppointmentWidget(
                          appointment: AppointmentModel.appointment[index]);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: Text(
                  "Patient Details",
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    color: const Color.fromRGBO(34, 43, 69, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 18.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: Text(
                  "Full name",
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: const Color.fromRGBO(107, 119, 154, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, right: 27.0),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(107, 119, 154, 0.05),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 119, 154, 0.05)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 119, 154, 0.05)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: Text(
                  "Age",
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: const Color.fromRGBO(107, 119, 154, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, right: 27.0),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(107, 119, 154, 0.05),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 119, 154, 0.05)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 119, 154, 0.05)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down_sharp),
                      color: const Color.fromRGBO(107, 119, 154, 1),
                      splashRadius: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18.0),
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: Text(
                  "Gender",
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: const Color.fromRGBO(107, 119, 154, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            visibilitycolor = true;
                          });
                        },
                        child: Container(
                          height: 40.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: visibilitycolor
                                ? const Color.fromRGBO(62, 100, 255, 1)
                                : Colors.white,
                            border: Border.all(
                              color: visibilitycolor
                                  ? const Color.fromRGBO(62, 100, 255, 1)
                                  : const Color.fromRGBO(107, 119, 154, 0.2),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              'Male',
                              style: GoogleFonts.poppins(
                                color: visibilitycolor
                                    ? Colors.white
                                    : const Color.fromRGBO(107, 119, 154, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            visibilitycolor = !visibilitycolor;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: visibilitycolor
                                ? Colors.white
                                : const Color.fromRGBO(62, 100, 255, 1),
                            border: Border.all(
                              color: visibilitycolor
                                  ? const Color.fromRGBO(107, 119, 154, 0.2)
                                  : const Color.fromRGBO(62, 100, 255, 1),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              'Female',
                              style: GoogleFonts.poppins(
                                color: visibilitycolor
                                    ? const Color.fromRGBO(107, 119, 154, 1)
                                    : Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
