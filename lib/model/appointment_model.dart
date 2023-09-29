class AppointmentModel {
  static List<Appointment> appointment = [
    Appointment(
      id: 1,
      time: "09:00 AM",
      isSelectd: false,
    ),
  ];
}

class Appointment {
  final int id;
  final String time;
  bool isSelectd;

  Appointment({
    required this.id,
    required this.time,
    required this.isSelectd,
  });

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      id: map["id"],
      time: map["time"],
      isSelectd: map["isSelected"],
    );
  }

  toMap() => {
        "id": id,
        "name": time,
        "isSelected": isSelectd,
      };
}
