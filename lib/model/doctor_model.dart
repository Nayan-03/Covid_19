class DoctorModel {
  static List<Doctor> doctor = [
    Doctor(
      id: 1,
      image: "assets/images/doctor.jpg",
      name: "Dr. Bellamy N",
      specialty: "Viralogist",
      star: "⭐️ 4.5",
      view: "(135 reviews)",
    ),
  ];
}

class Doctor {
  final int id;
  final String image;
  final String name;
  final String specialty;
  final String star;
  final String view;

  Doctor({
    required this.id,
    required this.image,
    required this.name,
    required this.specialty,
    required this.star,
    required this.view,
  });

  factory Doctor.formMap(Map<String, dynamic> map) {
    return Doctor(
      id: map["id"],
      image: map["image"],
      name: map["name"],
      specialty: map["specialty"],
      star: map["star"],
      view: map["view"],
    );
  }
  toMap() => {
        "id": id,
        "image": image,
        "name": name,
        "specialty": specialty,
        "star": star,
        "view": view,
      };
}
