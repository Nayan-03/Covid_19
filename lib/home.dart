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
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Text(
                      
                      "Covid-19\nHealthcare",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      
                          fontSize: 36.0, fontWeight: FontWeight.w500,),
                    ),
                  ),
                ],
              ),
            )
            // Container(
            //   height: 300,
            //   color: Colors.red,
            //   alignment: Alignment.bottomLeft,
            //   child: Column(children: [
            //     const Text("Put your Text Here!!!!"),
            //     Container(
            //       width: 360,
            //       height: 230,
            //       color: Colors.blue,
            //       child: const Align(
            //         alignment: Alignment.center,
            //         child: Text(
            //           'Car or sport car',
            //           maxLines: 3,
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontSize: 20,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }
}
