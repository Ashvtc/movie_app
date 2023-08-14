class Cast {
  int id;
  String name;
  String profilePath;
  String character;

  Cast({
    required this.id,
    required this.name,
    required this.profilePath,
    required this.character,
  });

  factory Cast.fromJson(Map<String, dynamic> json) {
    return Cast(
      id: json['id'],
      name: json['name'],
      profilePath: json['profile_path'],
      character: json['character'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'profilePath': profilePath,
      'character': character,
    };
  }

}