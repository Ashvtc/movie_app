import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/theme/app_theme.dart';
import '../../detail/detail_screen.dart';

class ActorMovieList extends StatelessWidget {
  const ActorMovieList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: double.infinity,

      //GRIDVIEW
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.72,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25
        ),
        itemCount: 10,
        itemBuilder: (context, index){

          //MOVIES
          return GestureDetector(

            //NAVIGATOR
            onTap: (){
              final route = MaterialPageRoute(builder: (context) => const DetailScreen());
              Navigator.push(context, route);
            },

            //INFO MOVIE
            child: Transform.translate(
            offset: index % 2 != 0 ?const Offset(0, 30) :Offset.zero,
              child: Container(
                height: 300,
                width: 151,

                //MOVIE POSTER
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://sm.ign.com/ign_es/screenshot/default/mahogany-payoff-poster-spain_ww6w.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),

                //MOVIE INFO
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("movieTitle", style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodyLarge),),
                      Text("rating                   ", style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodyMedium),),
                    ],
                  ),
                ),

              ),
            ),

          );
        },
      ),
    );
  }
}