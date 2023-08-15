import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/domain/models/person/personInfo.dart';
import 'package:movie_app/infrastructure/driven_adapter/actor_api/person_api.dart';
import 'package:movie_app/presentation/pages/profile/widgets/appBarMenuProfile_widget.dart';
import 'package:movie_app/presentation/pages/profile/widgets/movieList_profile_widget.dart';
import 'package:movie_app/presentation/pages/profile/widgets/profile_widget.dart';

import '../../../config/theme/app_theme.dart';
import '../../../domain/models/cast/cast.dart';
import '../../../domain/models/cast/castInfo.dart';
import '../../../domain/models/movie/movie.dart';
import '../../../domain/models/person/person.dart';
import '../../../infrastructure/driven_adapter/movie_api/movie_api.dart';
import '../../shared_widgets/sideBarMenu_widget.dart';
import '../home/widgets/movieList_widget.dart';

class ProfileScreen extends StatefulWidget {

  final int actorId;

  const ProfileScreen({super.key, required this.actorId});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  late Future<List<Person>> infoPerson;
  late Future<List<Movie>> popularMovies;

  get actorId => widget.actorId;

  @override
  void initState(){
    super.initState();
    infoPerson = PersonApi().getInfoPerson(actorId);
    popularMovies = MovieApi().getPopularMovies();
  }

  @override
  Widget build(BuildContext context) {

    Person? person = personList.firstWhere((person) => person.id == actorId);
    Cast? cast = castList.firstWhere((cast) => cast.id == actorId);

    return Scaffold(
      backgroundColor: AppTheme.bgWhite,
      extendBodyBehindAppBar: true,
      appBar: appBarMenuProfile(context),
      drawer: const SideBar(),

      //BODY CONTENT
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:20, right: 20, top: 5),
          child: FutureBuilder(
            future: popularMovies,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }

              else if (snapshot.hasData) {
                return Column(
                    children: [

                      Expanded(
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: ActorProfile(

                              //ACTOR'S PHOTO
                              photoActor: "https://image.tmdb.org/t/p/w200${cast.profilePath}",

                              //ACTOR'S NAME
                              actorName: Text(
                                person.name,
                                style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleMedium),
                              ),

                              //ACTOR'S DESCRIPTION
                              descriptionActor: Text(
                                person.biography,
                                style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodySmall),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //CASTED ON
                      Align(
                        alignment: Alignment.topLeft, // Ajusta la alineación del texto aquí
                        child: Text(
                          "Casted on",
                          style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleLarge)
                        )
                      ),

                      //MOVIE LIST
                      Expanded(child: ActorMovieList(snapshot: snapshot,)),

                    ],
                );
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
        )
      ),
    );
  }
}