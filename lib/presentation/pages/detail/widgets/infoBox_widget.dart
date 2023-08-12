import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:movie_app/presentation/pages/detail/widgets/actors_widget.dart';

import '../../../../config/theme/app_theme.dart';

@override
void infoMovieBox(BuildContext context, {required Text theTitle, required Text theRating}) {
  showModalBottomSheet(
    context:context,
    barrierColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return ClipRRect(
      child: Container(
        width: MediaQuery.of(context).size.width.round() * 1,
        height: 278.0,
        color: Colors.transparent,
        child: Stack(
          children: [

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0x00000000).withOpacity(0.20), //begin
                    const Color(0x00000000).withOpacity(0.70), //end
                  ]
                )
              ),
            ),

            //MOVIE INFO
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget> [

                //TITLE & RATING
                ListTile(
                  title: theTitle,
                  subtitle: theRating,
                ),

                //ACTORS
                MovieActors(

                  //ACTOR'S NAME
                  actorName: Text(
                    "Actor's name",
                    style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleSmall),
                  ),

                  //ACTOR'S ROLE
                  actorRole: Text(
                    "Actor's role",
                    style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.labelSmall),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  });}