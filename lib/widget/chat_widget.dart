import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 27.0, left: 130.0),
        child: ClipPath(clipper: ThreeRoundedEdgesMessageClipper(MessageType.send),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            
          ),
        ), 
        
        ),)
      ],
    );
  }
}