import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentation/pages/detail/widgets/appBarMenuDetail_widget.dart';
import 'package:movie_app/presentation/pages/detail/widgets/infoBox_widget.dart';

import '../../../config/theme/app_theme.dart';
import '../../../domain/models/cast/cast.dart';
import '../../../domain/models/movie/movie.dart';
import '../../../infrastructure/driven_adapter/movie_api/movie_api.dart';

class DetailScreen extends StatefulWidget {

  final Movie movie;

  const DetailScreen({
    super.key,
    required this.movie,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<Cast> castList = [];
  late Movie movie;
  static const imagePath = 'https://image.tmdb.org/t/p/original';

  @override
  void initState() {
    super.initState();
    movie = widget.movie;
    int movieId = movie.id;
    MovieApi movieApi = MovieApi();
    movieApi.getMovieCast(movieId).then((value) {
      setState(() {
        castList = value;
      });
    }).catchError((error) {
    });
  }

  @override
  Widget build(BuildContext context) {
    String rating = (movie.voteAverage * 10).toString();

    return Scaffold(
      appBar: appBarMenuDetail(context),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [

          //MOVIE POSTER
          Positioned.fill(
            child: Image.network(
              "$imagePath${movie.posterPath}",
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
          ),

          //MOVIE INFO
          SafeArea(
            child: GestureDetector(
              onTap: () {
                infoMovieBox(
                  context,
                  //MOVIE TITLE
                  theTitle: Text(
                    movie.title,
                    style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.headlineLarge),
                  ),

                  //MOVIE RATING
                  theRating: Text(
                    "$rating% User Score",
                    style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.headlineMedium),
                  ),

                  movieId: movie.id,
                  castList: castList,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}