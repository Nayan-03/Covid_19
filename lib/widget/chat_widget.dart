import 'package:covid_19/model/chat_model.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatWidget extends StatefulWidget {
  final Chat chat;
  const ChatWidget({Key? key, required this.chat}) : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80.0, bottom: 20.0),
          child: ClipPath(
            clipper: ThreeRoundedEdgesMessageClipper(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(241, 244, 247, 1),
              ),
              child: Text(
                //"hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?",
                widget.chat.message,
                style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(107, 119, 154, 1),
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 80.0, bottom: 20.0),
            child: ClipPath(
              clipper: ThreeRoundedEdgesMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 10.0, bottom: 25.0, right: 20.0),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(62, 100, 255, 1),
                ),
                child: Text(
                  //"I’m here for you, don’t worry. What symptoms are you experiencing?",
                  widget.chat.sender,
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
