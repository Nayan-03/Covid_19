import 'package:covid_19/utills/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailpage extends StatefulWidget {
  const DoctorDetailpage({super.key});

  @override
  State<DoctorDetailpage> createState() => _DoctorDetailpageState();
}

class _DoctorDetailpageState extends State<DoctorDetailpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 470.0,
              width: 414.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0),
                  bottomRight: Radius.circular(60.0),
                ),
                color: Colors.blue,
              ),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 27.0),
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
                                  context, MyRoutes.doctorRoute);
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
                        padding: const EdgeInsets.only(top: 30.0, right: 7.0),
                        child: IconButton(
                          splashRadius: 1,
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(55.0),
                        child: Image.asset(
                          "assets/images/doctor.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        "Dr. Bellamy Nicholas",
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(34, 43, 69, 1),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        "Viralogist",
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(107, 119, 154, 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 27.0, top: 23.0, right: 27.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 130.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            // boxShadow: const [
                            //   BoxShadow(
                            //     blurRadius: 20.0,
                            //     color: Color.fromRGBO(0, 0, 0, 0.08),
                            //   ),
                            // ],
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 130.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            // boxShadow: const [
                            //   BoxShadow(
                            //     blurRadius: 20.0,
                            //     color: Color.fromRGBO(0, 0, 0, 0.08),
                            //   ),
                            // ],
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 130.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            // boxShadow: const [
                            //   BoxShadow(
                            //     blurRadius: 20.0,
                            //     color: Color.fromRGBO(0, 0, 0, 0.08),
                            //   ),
                            // ],
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
