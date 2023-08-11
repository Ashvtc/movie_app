class Movie{
  String title;
  String backdropPath;
  String originalTitle;
  String posterPath;
  String releaseDate;
  double voteAverage;

  Movie({
    required this.title,
    required this.backdropPath,
    required this.originalTitle,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"],
      backdropPath: json["backdrop_path"],
      originalTitle: json["original_title"],
      posterPath: json["poster_path"],
      releaseDate: json["release_date"],
      voteAverage: json["vote_average"],
    );
  }

}