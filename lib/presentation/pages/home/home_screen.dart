import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/home/widgets/appBarMenu_widget.dart';
import 'package:movie_app/presentation/pages/home/widgets/movieList_widget.dart';

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
      body: SafeArea(
        child: FutureBuilder(
          future: popularMovies,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }

            //MOVIE LIST
            else if (snapshot.hasData) {
                return Expanded(child: HomeMovieList(snapshot: snapshot,));
            }

            //INDICATOR
            else {
              return Center(
                child: Platform.isAndroid
                  ? const CircularProgressIndicator()
                  : const CupertinoActivityIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}