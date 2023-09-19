import 'dart:convert';
import 'dart:core';

import 'package:covid_19/model/specialty_model.dart';
import 'package:covid_19/utills/routes.dart';
import 'package:covid_19/widget/specialty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final specialtyjson =
        await rootBundle.loadString("assets/files/specialty.json");
    final decodedData = jsonDecode(specialtyjson);
    var specialtyData = decodedData["specialty"];
    SpecialtyModel.specialty = List.from(specialtyData)
        .map<Specialty>((specialty) => Specialty.formMap(specialty))
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 27.0),
                    child: Text(
                      "Welcome, Toluwani",
                      style: GoogleFonts.poppins(
                        fontSize: 15.0,
                        color: const Color.fromRGBO(34, 43, 69, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 130.0),
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
                            onPressed: () {},
                            icon: const Icon(
                              Icons.calendar_month,
                              color: Color.fromRGBO(34, 43, 69, 1),
                            ),
                            splashRadius: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                        ),
                        child: IconButton(
                          splashRadius: 1,
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 27.0, top: 15.0, right: 27.0),
                child: Container(
                  height: 463.0,
                  width: 360.0,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(62, 100, 255, 1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Covid-19\nHealthcare",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "\nBook your next online\nappointments",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 127.0, left: 10.0, right: 30.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0)),
                              child: Image(
                                height: 160.0,
                                width: 300.0,
                                image:
                                    AssetImage("assets/images/healthcare.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, right: 27.0),
                child: Container(
                  height: 80.0,
                  width: 360.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(107, 119, 154, 0.05),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            "STI Problems?",
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(35, 55, 77, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.doctorRoute);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_sharp,
                                color: Color.fromRGBO(34, 43, 69, 1),
                              ),
                              splashRadius: 1,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            "Find suitable specialists here",
                            style: GoogleFonts.poppins(
                                color: const Color.fromRGBO(107, 119, 154, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, top: 20.0),
                child: Text(
                  "Specialty 😷",
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(34, 43, 69, 1),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 27.0, bottom: 20.0),
                child: SizedBox(
                  height: 133.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: SpecialtyModel.specialty.length,
                    itemBuilder: (context, index) =>SpecialtyWidget(
                        specialty: SpecialtyModel.specialty[index],
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
