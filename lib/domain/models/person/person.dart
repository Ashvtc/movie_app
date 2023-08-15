class Person {
  int id;
  String name;
  String biography;

  Person({
    required this.id,
    required this.name,
    required this.biography,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json["id"],
      name: json["title"],
      biography: json["backdrop_path"],
    );
  }
}