class ChatModel {
  static List<Chat> chat = [
    Chat(
      id: 1,
      message: "Hello!",
      sender: "hii",
    )
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
