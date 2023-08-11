import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentation/pages/detail/detail_screen.dart';
import 'package:movie_app/presentation/pages/home/widgets/appBarMenu_widget.dart';

import '../../../config/theme/app_theme.dart';
import '../../../domain/models/movie/movie.dart';
import '../../../infrastructure/driven_adapter/movie_api/movie_api.dart';
import '../../shared_widgets/sideBarMenu_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movie>> popularMovies;

  static const imagePath = 'https://image.tmdb.org/t/p/w500';

  @override
  void initState(){
    super.initState();
    popularMovies = MovieApi().getPopularMovies();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppTheme.bgWhite,
      extendBodyBehindAppBar: true,
      appBar: appBarMenu(context),
      drawer: const SideBar(),

      //BODY CONTENT
      body: const SafeArea(
        child: MovieList(),
      ),
    );
  }
}

class MovieList extends StatelessWidget {
  const MovieList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,

      //GRIDVIEW
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 220,
          childAspectRatio: 0.72,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25
        ),
        itemCount: 10,
        itemBuilder: (_, index){

          //POPULAR MOVIES
          return GestureDetector(

            //NAVIGATOR
            onTap: (){
              final route = MaterialPageRoute(builder: (context) => const DetailScreen());
              Navigator.push(context, route);
            },

            //INFO MOVIE
            child: Container(
              height: 300,
              width: 151,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://sm.ign.com/ign_es/screenshot/default/mahogany-payoff-poster-spain_ww6w.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("movieTitle", style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodyLarge),),
                    Text("rating                   ", style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodyMedium),),
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