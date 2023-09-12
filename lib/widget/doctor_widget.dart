import 'package:covid_19/model/doctor_model.dart';
import 'package:covid_19/utills/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorWidget extends StatefulWidget {
  final Doctor doctor;
  const DoctorWidget({Key? key, required this.doctor}) : super(key: key);

  @override
  State<DoctorWidget> createState() => _DoctorWidgetState();
}

class _DoctorWidgetState extends State<DoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MyRoutes.doctordetailRoute);
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 20.0,
              color: Color.fromRGBO(0, 0, 0, 0.08),
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(45.0),
                  child: Image.asset(
                    widget.doctor.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      widget.doctor.name,
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(34, 43, 69, 1),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      widget.doctor.specialty,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(107, 119, 154, 1),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 3.0),
                      child: Text(
                        widget.doctor.star,
                        style: GoogleFonts.poppins(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(107, 119, 154, 1),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0, top: 3.0),
                      child: Text(
                        widget.doctor.view,
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
          ],
        ),
      ),
    );
  }
}
