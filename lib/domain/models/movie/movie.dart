class Movie {
  int id;
  String title;
  String backdropPath;
  String originalTitle;
  String posterPath;
  double voteAverage;

  Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.originalTitle,
    required this.posterPath,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json["id"],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      originalTitle: json["original_title"],
      posterPath: json["poster_path"],
      voteAverage: json["vote_average"].toDouble(),
    );
  }
}