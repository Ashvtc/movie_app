import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/domain/models/cast/cast.dart';
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

  Future<List<Cast>> getMovieCast(int movieId) async {
    final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/$movieId/credits?api_key=$apiKey'));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['cast'] as List;
      return decodedData.map((cast) => Cast.fromJson(cast)).toList();
    } else {
      throw Exception();
    }
  }
}