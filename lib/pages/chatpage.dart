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
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70.0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 17.0, bottom: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.newappointmentRoute);
              },
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
                child: const Icon(
                  Icons.arrow_back_sharp,
                  color: Color.fromRGBO(34, 43, 69, 1),
                ),
              ),
            ),
          ),
          title: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, bottom: 10.0, right: 10.0),
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
                padding: const EdgeInsets.only(top: 10.0),
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
            ],
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, bottom: 10.0, right: 10.0),
              child: GestureDetector(
                onTap: () {},
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
                  child: const Icon(
                    Icons.call_sharp,
                    color: Color.fromRGBO(34, 43, 69, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, bottom: 10.0, right: 17.0),
              child: GestureDetector(
                onTap: () {},
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
                  child: const Icon(
                    Icons.video_call_sharp,
                    color: Color.fromRGBO(34, 43, 69, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            padding: const EdgeInsets.only(
                top: 20.0, left: 16.0, right: 16.0, bottom: 15.0),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: ChatModel.chat.length,
            itemBuilder: (context, index) => ChatWidget(
              chat: ChatModel.chat[index],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 68.0,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(241, 244, 247, 1),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(241, 245, 247, 1),
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromRGBO(34, 43, 69, 1),
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 13.0),
              Container(
                alignment: Alignment.centerRight,
                width: 270.0,
                child: TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20.0),
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
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.mic_sharp,
                  color: Color.fromRGBO(34, 43, 69, 1),
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
