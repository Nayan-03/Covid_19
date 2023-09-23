import 'dart:convert';

import 'package:covid_19/model/doctor_model.dart';
import 'package:covid_19/utills/routes.dart';
import 'package:covid_19/widget/doctor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctorpage extends StatefulWidget {
  const Doctorpage({super.key});

  @override
  State<Doctorpage> createState() => _DoctorpageState();
}

class _DoctorpageState extends State<Doctorpage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    doctorData();
  }

  doctorData() async {
    final doctorjson = await rootBundle.loadString("assets/files/doctor.json");
    final decodedData = jsonDecode(doctorjson);
    var doctorData = decodedData["doctor"];
    DoctorModel.doctor = List.from(doctorData)
        .map<Doctor>((doctor) => Doctor.formMap(doctor))
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
                Navigator.pushNamed(context, MyRoutes.homeRoute);
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
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              "Doctors",
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: const Color.fromRGBO(34, 43, 69, 1),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 17.0, bottom: 10.0),
              child: GestureDetector(
                onTap: () {},
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
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70.0),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 17.0, right: 17.0, bottom: 15.0),
                child: TextField(
                  controller: _searchController,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Search for doctors",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromRGBO(107, 119, 154, 1)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(107, 119, 154, 1),
                      size: 25.0,
                    ),
                    filled: true,
                    fillColor: const Color.fromRGBO(107, 119, 154, 0.05),
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 119, 154, 0.05)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 119, 154, 0.05)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 17.0, right: 17.0, bottom: 20.0),
          child: GridView.builder(
            itemCount: DoctorModel.doctor.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              mainAxisExtent: 199.0,
            ),
            itemBuilder: (context, index) => DoctorWidget(
              doctor: DoctorModel.doctor[index],
            ),
          ),
        ),
      ),
    );
  }
}
