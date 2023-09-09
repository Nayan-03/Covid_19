import 'package:covid_19/model/specialty_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialtyWidget extends StatefulWidget {
  final Specialty specialty;
  const SpecialtyWidget({Key? key, required this.specialty}) : super(key: key);

  @override
  State<SpecialtyWidget> createState() => _SpecialtyWidgetState();
}

class _SpecialtyWidgetState extends State<SpecialtyWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 27.0),
          child: Container(
            height: 133.0,
            width: 114.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0), color: Colors.blue
                //color: Color.fromRGBO(107, 119, 154, 0.05),
                ),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    widget.specialty.image,
                    height: 38.0,
                    width: 38.0,
                  ),
                ),
                Center(
                  child: Text(
                    widget.specialty.name,
                    style: GoogleFonts.poppins(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(34, 43, 69, 1),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.specialty.occupation,
                    style: GoogleFonts.poppins(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(107, 119, 154, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
