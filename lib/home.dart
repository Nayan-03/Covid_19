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
    return Scaffold(
        body: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 27.0),
          child: Text(
            "Welcome, Toluwani",
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 49.0, left: 383.0),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        )
      ],
    )

        // Padding(
        //     padding: const EdgeInsets.only(top: 50.0, left: 27.0),
        //     child: Text(
        //       'Welcome, Toluwani',
        //       style: GoogleFonts.poppins(
        //         fontSize: 15.0,
        //         color: Colors.black,
        //         fontWeight: FontWeight.w400,
        //       ),
        //     ),
        //   ),
        );
  }
}
