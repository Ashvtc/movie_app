import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/detail/widgets/actors_widget.dart';
import '../../../../domain/models/cast/cast.dart';

void infoMovieBox(BuildContext context, {required Text theTitle, required Text theRating, required int movieId, required List<Cast> castList}) {
  showModalBottomSheet(
    context: context,
    barrierColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return ClipRRect(
        child: Container(
          width: MediaQuery.of(context).size.width.round() * 1,
          height: 400.0,
          color: Colors.transparent,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0x00000000).withOpacity(0.20),
                      const Color(0x00000000).withOpacity(0.70),
                    ],
                  ),
                ),
              ),

              // MOVIE INFO
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  // TITLE & RATING
                  ListTile(
                    title: theTitle,
                    subtitle: theRating,
                  ),

                  // CAST
                  MovieActors(movieInfo: movieId)
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}