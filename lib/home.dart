import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 27.0),
                  child: Text(
                    "Welcome, Toluwani",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 140.0),
                      child: IconButton(
                          splashRadius: 1,
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_month)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: IconButton(
                          splashRadius: 1,
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 463.0,
              width: 360.0,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(62, 100, 255, 1),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: RichText(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
