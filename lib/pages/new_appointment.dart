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
  String? selectedOption;

  bool visibilitycolor = true;

  List<String> h1 = ["Available time", "Patient Details"];
  List<String> h2 = [
    "Full name",
    "Age",
    "Gender",
    "Write your problem",
  ];

  final List<String> age = [
    '16 - 20',
    '21 - 25',
    '26 - 30',
    '31 - 35',
    '36 - 40',
    '41 - 50',
    '51 - 60',
  ];

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
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70.0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 17.0, bottom: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.doctordetailRoute);
              },
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
                child: const Icon(
                  Icons.arrow_back_sharp,
                  color: Color.fromRGBO(34, 43, 69, 1),
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 38.0, left: 27.0),
              //       child: Container(
              //         height: 40.0,
              //         width: 40.0,
              //         decoration: BoxDecoration(
              //           border: Border.all(
              //             color: const Color.fromRGBO(241, 244, 247, 1),
              //           ),
              //           boxShadow: const [
              //             BoxShadow(
              //               blurRadius: 1.0,
              //               color: Color.fromRGBO(0, 0, 0, 0.15),
              //             ),
              //           ],
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(10.0),
              //         ),
              //         child: IconButton(
              //           onPressed: () {
              //             Navigator.pushNamed(
              //                 context, MyRoutes.doctordetailRoute);
              //           },
              //           icon: const Icon(
              //             Icons.arrow_back_sharp,
              //             color: Color.fromRGBO(34, 43, 69, 1),
              //           ),
              //           splashRadius: 1,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 48.0, left: 85.0),
              //       child: Center(
              //         child: Text(
              //           "New Appointment",
              //           style: GoogleFonts.poppins(
              //             fontSize: 18.0,
              //             color: const Color.fromRGBO(34, 43, 69, 1),
              //             fontWeight: FontWeight.w400,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
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
                padding: const EdgeInsets.only(left: 17.0, right: 17.0),
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
/////////////////////////////////////////////////
              const SizedBox(height: 27.0),
              heading1(h1[0]),
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 20, right: 17),
                child: SizedBox(
                  height: 140.0,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            mainAxisExtent: 100.0),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return const AppointmentWidget();
                    },
                  ),
                ),
              ),
/////////////////////////////////////////
              // SizedBox(
              //   height: 60,
              //   width: MediaQuery.of(context).size.width,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     itemCount: AppointmentModel.appointment.length,
              //     itemBuilder: (context, index) {
              //       return AppointmentWidget(
              //         appointment: AppointmentModel.appointment[index],
              //       );
              //     },
              //   ),
              // ),
              // ),
//////////////////////////////////////////////////////
              const SizedBox(height: 32.0),
              heading1(h1[1]),
              const SizedBox(height: 18.0),
              heading2(h2[0]),

              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
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
              heading2(h2[1]),

              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                child: DropdownButtonFormField<String>(
                  value: selectedOption,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption = newValue;
                    });
                  },
                  items: age.map((String age) {
                    return DropdownMenuItem<String>(
                      value: age,
                      child: Text(
                        age,
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          color: const Color.fromRGBO(34, 43, 69, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  }).toList(),
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
              heading2(h2[2]),

              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
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
              const SizedBox(height: 18.0),
              heading2(h2[3]),

              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Write your Problem",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromRGBO(107, 119, 154, 1)),
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
                  maxLines: 6,
                ),
              ),
              const SizedBox(height: 62.0),
              Padding(
                padding: const EdgeInsets.only(
                    left: 17.0, right: 17.0, bottom: 30.0),
                child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, MyRoutes.chatpageRoute),
                  child: Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color.fromRGBO(62, 100, 255, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Set Appointment",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget heading2(String h2) {
  return Padding(
    padding: const EdgeInsets.only(left: 17.0),
    child: Text(
      h2,
      style: GoogleFonts.poppins(
        fontSize: 14.0,
        color: const Color.fromRGBO(107, 119, 154, 1),
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget heading1(String h1) {
  return Padding(
    padding: const EdgeInsets.only(left: 17.0),
    child: Text(
      h1,
      style: GoogleFonts.poppins(
        fontSize: 18.0,
        color: const Color.fromRGBO(34, 43, 69, 1),
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
// Widget textfield(String age) {
//   return Center(
//     child: Text(
//       age,
//       style: GoogleFonts.poppins(
//         color: const Color.fromRGBO(34, 43, 69, 1),
//         fontSize: 16.0,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   );
// }
