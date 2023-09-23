class ChatModel {
  static List<Chat> chat = [
    Chat(
      id: 1,
      message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?",
      sender: "I’m here for you, don’t worry. What symptoms are you experiencing?",
    ),
    Chat(
      id: 2,
      message: "fever dry cough tiredness sore throat",
      sender: "oh so sorry about that. do you have any underlying diseases?",
    ),
    // Chat(
    //   id: 3,
    //   message:
    //       "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?",
    //   sender:
    //       "I’m here for you, don’t worry. What symptoms are you experiencing?",
    // )
  ];
}

class Chat {
  final int id;
  final String message;
  final String sender;

  Chat({
    required this.id,
    required this.message,
    required this.sender,
  });

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      id: map["id"],
      message: map["message"],
      sender: map["sender"],
    );
  }

  toMap() => {
        "id": id,
        "message": message,
        "sender": sender,
      };
}
