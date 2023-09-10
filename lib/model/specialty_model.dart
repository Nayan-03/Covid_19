class SpecialtyModel {
  static List<Specialty> specialty = [
    Specialty(
      id: 1,
      image: "assets/images/brain.jpg",
      name: "Neurology",
      num: "2029",
      occupation: "Doctors",
    ),
  ];
}

class Specialty {
  final int id;
  final String image;
  final String name;
  final String num;
  final String occupation;

  Specialty({
    required this.id,
    required this.image,
    required this.name,
    required this.num,
    required this.occupation,
  });

  factory Specialty.formMap(Map<String, dynamic> map) {
    return Specialty(
      id: map["id"],
      image: map["image"],
      name: map["name"],
      num: map["num"],
      occupation: map["occupation"],
    );
  }
  toMap() => {
        "id": id,
        "image": image,
        "name": name,
        "num": num,
        "occupation": occupation,
      };
}
