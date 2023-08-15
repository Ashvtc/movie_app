import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentation/pages/profile/profile_screen.dart';

import '../../../../config/theme/app_theme.dart';
import '../../../../domain/models/cast/castInfo.dart';

class MovieActors extends StatelessWidget {
  const MovieActors(
    {super.key, required int movieInfo}
  );

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(builder: (context) => ProfileScreen(actorId: castList[0].id));
                  Navigator.push(context, route);
                },

                child: Container(
                  height: 140, width: 115,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8),),
                  ),
                  child: Stack( children: [

                      //ACTOR IMAGE
                      Positioned.fill(
                        child: Image.network( "https://image.tmdb.org/t/p/w200${castList[0].profilePath}",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),

                      //ACTOR INFO
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            title: Text(castList[0].name, style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleSmall),),
                            subtitle: Text(castList[0].character, style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.labelSmall),),
                          ),
                        ],
                      ),
                  ],),
                ),
              ),

              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(builder: (context) => ProfileScreen(actorId: castList[2].id));
                  Navigator.push(context, route);
                },

                child: Container(
                  height: 140, width: 115,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8),),
                  ),
                  child: Stack( children: [

                      //ACTOR IMAGE
                      Positioned.fill(
                        child: Image.network( "https://image.tmdb.org/t/p/w200${castList[2].profilePath}",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),

                      //ACTOR INFO
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            title: Text(castList[2].name, style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleSmall),),
                            subtitle: Text(castList[2].character, style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.labelSmall),),
                          ),
                        ],
                      ),
                  ],),
                ),
              ),

              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(builder: (context) => ProfileScreen(actorId: castList[1].id));
                  Navigator.push(context, route);
                },

                child: Container(
                  height: 140, width: 115,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8),),
                  ),
                  child: Stack( children: [

                      //ACTOR IMAGE
                      Positioned.fill(
                        child: Image.network( "https://image.tmdb.org/t/p/w200${castList[1].profilePath}",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),

                      //ACTOR INFO
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            title: Text(castList[1].name, style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleSmall),),
                            subtitle: Text(castList[1].character, style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.labelSmall),),
                          ),
                        ],
                      ),
                  ],),
                ),
              )

            ],
        );
      }
    );
  }


}