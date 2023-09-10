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
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
          ),
          child: Container(
            height: 133.0,
            width: 114.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: const Color.fromRGBO(107, 119, 154, 0.05),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 14.0,
                    top: 20.0,
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      widget.specialty.image,
                      height: 55.0,
                      width: 55.0,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      widget.specialty.name,
                      style: GoogleFonts.poppins(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(34, 43, 69, 1),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        widget.specialty.num,
                        style: GoogleFonts.poppins(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(107, 119, 154, 1),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 23.0),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
