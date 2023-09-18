import 'package:covid_19/utills/routes.dart';
import 'package:covid_19/widget/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
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
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, left: 27.0),
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
                              context, MyRoutes.newappointmentRoute);
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
                    padding: const EdgeInsets.only(left: 10.0, top: 38.0),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(20.0),
                        child: Image.asset(
                          "assets/images/doctor.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0, left: 10.0),
                    child: Center(
                      child: Text(
                        "Dr. Bellamy Nich…",
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          color: const Color.fromRGBO(34, 43, 69, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, left: 37.0),
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
                          Icons.call_sharp,
                          color: Color.fromRGBO(34, 43, 69, 1),
                        ),
                        splashRadius: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, left: 10.0),
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
                          Icons.video_call_sharp,
                          color: Color.fromRGBO(34, 43, 69, 1),
                        ),
                        splashRadius: 1,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 27.0, right: 27.0, bottom: 30.0),
                child: ListView.builder(itemBuilder: (context, index) => const ChatWidget(),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
