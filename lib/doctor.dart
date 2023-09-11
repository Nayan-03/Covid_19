import 'dart:convert';

import 'package:covid_19/model/doctor_model.dart';
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, left: 27.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                          ),
                        ],
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          color: Color.fromRGBO(34, 43, 69, 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0, left: 105.0),
                    child: Text(
                      "Doctors",
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: const Color.fromRGBO(34, 43, 69, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, left: 105.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1.0,
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                          ),
                        ],
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          color: Color.fromRGBO(34, 43, 69, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, top: 28.0),
                child: Container(
                  width: 360.0,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search for doctors',
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 27.0, right: 27.0, bottom: 20.0),
                child: GridView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: DoctorModel.doctor.length,
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      mainAxisExtent: 199.0,
                    ),
                    itemBuilder: (context, index) {
                      return DoctorWidget(doctor: DoctorModel.doctor[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
