import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/theme/app_theme.dart';
import '../../detail/detail_screen.dart';

class HomeMovieList extends StatelessWidget {
  const HomeMovieList({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot snapshot;
  static const imagePath = 'https://image.tmdb.org/t/p/w500';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, right: 8, left: 24, bottom: 1),
      width: double.infinity,
      height: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.74,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),

        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {

          String rating = (snapshot.data![index].voteAverage * 10).toString();

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(

              onTap: () {
                final route = MaterialPageRoute(builder: (context) => DetailScreen(movie: snapshot.data[index]));
                Navigator.push(context, route);
              },

              child: Transform.translate(
                offset: index % 2 != 0 ?const Offset(0, 30) :Offset.zero,
                child: Stack(
                  children: [

                    //MOVIE POSTER
                    Container(
                    height: 300,
                    width: 155,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Image.network(
                        "$imagePath${snapshot.data![index].posterPath}",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),

                    //MOVIE INFO
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            title: Text("${snapshot.data![index].title}", style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodyLarge),),
                            subtitle: Text("$rating% User Score", style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodyMedium),),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}