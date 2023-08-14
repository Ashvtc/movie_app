import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/profile/profile_screen.dart';

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

                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        "https://image.tmdb.org/t/p/w200${castList[0].profilePath}",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 115,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            title: Text(castList[0].name),
                            subtitle: Text(castList[0].character),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(builder: (context) => ProfileScreen(actorId: castList[2].id));
                  Navigator.push(context, route);
                },

                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        "https://image.tmdb.org/t/p/w200${castList[2].profilePath}",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 115,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            title: Text(castList[2].name),
                            subtitle: Text(castList[2].character),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(builder: (context) => ProfileScreen(actorId: castList[0].id));
                  Navigator.push(context, route);
                },

                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        "https://image.tmdb.org/t/p/w200${castList[1].profilePath}",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 115,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            title: Text(castList[1].name),
                            subtitle: Text(castList[1].character),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      }
    );
  }


}