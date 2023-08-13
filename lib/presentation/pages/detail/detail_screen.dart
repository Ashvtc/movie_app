import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentation/pages/detail/widgets/appBarMenuDetail_widget.dart';
import 'package:movie_app/presentation/pages/detail/widgets/infoBox_widget.dart';

import '../../../config/theme/app_theme.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarMenuDetail(context),

      //BODY CONTENT
      body: GestureDetector(
        onTap: (){
          infoMovieBox(
            context,

            //MOVIE TITLE
            theTitle: Text(
              "Título",
              style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.headlineLarge),
            ),

            //MOVIE RATING
            theRating: Text(
              "Rating                 ",
              style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.headlineMedium),
            ),

          );
        },

          //MOVIE POSTER
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://sm.ign.com/ign_es/screenshot/default/mahogany-payoff-poster-spain_ww6w.jpg'),
                fit: BoxFit.cover,
              )
            ),
            alignment: Alignment.center,
          ),

      ),
    );
  }
}