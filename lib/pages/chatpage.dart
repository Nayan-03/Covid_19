import 'package:covid_19/model/chat_model.dart';
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
        body: Column(
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
              padding: const EdgeInsets.only(
                  top: 40.0, left: 27.0, right: 27.0, bottom: 15.0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: ChatModel.chat.length,
                itemBuilder: (context, index) => ChatWidget(
                  chat: ChatModel.chat[index],
                ),
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: 68.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(241, 244, 247, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(241, 245, 247, 1),
                    spreadRadius: 2,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 35.0,
                        ),
                        splashRadius: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      width: 290.0,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 20.0, top: 8.0, bottom: 8.0),
                          hintText: "Write a message…",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: const Color.fromRGBO(107, 119, 154, 1),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        size: 30.0,
                      ),
                      splashRadius: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // bottomSheet: Container(
        //   height: 68.0,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: const BoxDecoration(
        //     color: Color.fromRGBO(241, 244, 247, 1),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Color.fromRGBO(241, 244, 247, 1),
        //         spreadRadius: 2,
        //         blurRadius: 10.0,
        //       ),
        //     ],
        //   ),
        //   child: Row(
        //     children: [
        //       const Padding(
        //         padding: EdgeInsets.only(left: 27.0),
        //         child: Icon(
        //           Icons.add,
        //           size: 22.0,
        //         ),
        //       ),
        //       Padding(
        //         padding:
        //             const EdgeInsets.only(left: 13.0, top: 12.0, bottom: 12.0),
        //         child: TextFormField(
        //           keyboardType: TextInputType.text,
        //           cursorColor: Colors.black,
        //           decoration: InputDecoration(
        //             hintText: "Write a message…",
        //             hintStyle: GoogleFonts.poppins(
        //               fontSize: 16.0,
        //               fontWeight: FontWeight.w300,
        //               color: const Color.fromRGBO(107, 119, 154, 1),
        //             ),
        //             filled: true,
        //             fillColor: Colors.white,
        //             enabledBorder: OutlineInputBorder(
        //               borderSide: const BorderSide(color: Colors.white),
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             focusedBorder: OutlineInputBorder(
        //               borderSide: const BorderSide(color: Colors.white),
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //           ),
        //         ),
        //       ),
        //       const Padding(
        //         padding: EdgeInsets.only(left: 20.0),
        //         child: Icon(
        //           Icons.mic,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
