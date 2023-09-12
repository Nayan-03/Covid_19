import 'package:covid_19/utills/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailpage extends StatefulWidget {
  const DoctorDetailpage({super.key});

  @override
  State<DoctorDetailpage> createState() => _DoctorDetailpageState();
}

class _DoctorDetailpageState extends State<DoctorDetailpage> {
  ////////////////////////////////////////////////////////////
  List<String> number = ["1000+", "10 Yrs", "4.5"];
  List<String> catagory = ["patients", "Experience", "Ratings"];
  List<String> image = [
    "assets/images/patient.png",
    "assets/images/experience.png",
    "assets/images/rating.png",
  ];
  List<Color> color1 = [
    const Color.fromRGBO(122, 206, 250, 0.15),
    const Color.fromRGBO(253, 241, 243, 1),
    const Color.fromRGBO(254, 246, 236, 1)
  ];
////////////////////////////////////////////////////////////////
  List<String> commuimage = [
    "assets/images/message.png",
    "assets/images/call.png",
    "assets/images/video.png",
  ];
  List<String> communication = ["Messaging", "Audio Call", "Video Call"];
  List<String> text = [
    "Chat me up, share photos.",
    "Call your doctor directly.",
    "See your doctor live."
  ];
  List<Color> color2 = [
    const Color.fromRGBO(237, 161, 171, 0.15),
    const Color.fromRGBO(122, 206, 250, 0.15),
    const Color.fromRGBO(247, 196, 128, 0.15)
  ];
  
//////////////////////// for row 3 container///////////////////
  Widget card(String number, catagory, image, color1) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 130.0,
            width: 110.0,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 80.0,
                  color: Color.fromRGBO(107, 119, 154, 0.15),
                ),
              ],
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 73.0,
                      left: 3.0,
                    ),
                    child: Text(
                      number,
                      style: GoogleFonts.poppins(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(34, 43, 69, 1),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    catagory,
                    style: GoogleFonts.poppins(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(107, 119, 154, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 30.0,
          child: Container(
            height: 63.0,
            width: 49.0,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                color: color1),
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image.asset(
                image,
                height: 22.0,
                width: 24.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

//////////////////////// for 3 colum container social media////////////////////////
  Widget commu(String communication, text, commuimage, color2) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 50.0,
              width: 225.0,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2.5,
                          left: 60.0,
                        ),
                        child: Text(
                          communication,
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(34, 43, 69, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0, left: 60.0),
                        child: Text(
                          text,
                          style: GoogleFonts.poppins(
                            fontSize: 12.0,
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
          Positioned(
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: color2,
              ),
              child: Image.asset(commuimage),
            ),
          ),
        ],
      ),
    );
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
              Container(
                height: 470.0,
                width: 414.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          card(number[0], catagory[0], image[0], color1[0]),
                          card(number[1], catagory[1], image[1], color1[1]),
                          card(number[2], catagory[2], image[2], color1[2])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, top: 15.0),
                child: SizedBox(
                  height: 150.0,
                  width: 360.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Doctor",
                        style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(34, 43, 69, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: Text(
                          "Dr. Bellamy Nicholas is a top specialist at London Bridge Hospital at London. He has achieved several awards and recognition for is contribution and service in his own field. He is available for private consultation. ",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(107, 119, 154, 1),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, top: 25.0),
                child: SizedBox(
                  height: 60.0,
                  width: 360.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Working time",
                        style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(34, 43, 69, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Text(
                          "Mon - Sat (08:30 AM - 09:00 PM)",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(107, 119, 154, 1),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, top: 29.0),
                child: SizedBox(
                  height: 214.0,
                  width: 225.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Communication",
                        style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(34, 43, 69, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Column(
                        children: [
                          commu(communication[0], text[0], commuimage[0],
                              color2[0]),
                          commu(communication[1], text[1], commuimage[1],
                              color2[1]),
                          commu(communication[2], text[2], commuimage[2],
                              color2[2]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 42.0, left: 25.0, bottom: 30.0),
                child: Container(
                  height: 60.0,
                  width: 360.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromRGBO(62, 100, 255, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Book Appointment",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
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
