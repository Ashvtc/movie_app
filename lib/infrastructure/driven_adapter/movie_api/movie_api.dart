import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../domain/models/movie/movie.dart';

class MovieApi {

  static const apiKey = '449a79e6936db938259c1bdb7d87fcd1';
  static const popularMovies = 'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey';

  Future<List<Movie>> getPopularMovies() async {
    final response = await http.get(Uri.parse(popularMovies));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception();
    }
  }
}