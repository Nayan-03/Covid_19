class AppointmentModel {
  static List<Appointment> appointment = [
    Appointment(
      id: 1,
      time: "09:00 AM",
      isSelected: false,
    ),
  ];
}

class Appointment {
  final int id;
  final String time;
  bool isSelected;

  Appointment({
    required this.id,
    required this.time,
    required this.isSelected,
  });

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      id: map["id"],
      time: map["time"],
      isSelected: map["isSelected"],
    );
  }

  toMap() => {
        "id": id,
        "name": time,
        "isSelected": isSelected,
      };
}
