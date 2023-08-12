import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentation/pages/profile/widgets/appBarMenuProfile_widget.dart';
import 'package:movie_app/presentation/pages/profile/widgets/movieList_profile_widget.dart';
import 'package:movie_app/presentation/pages/profile/widgets/profile_widget.dart';

import '../../../config/theme/app_theme.dart';
import '../../shared_widgets/sideBarMenu_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //late Future<List<Actor>> popularMovies;

  //static const imagePath = 'https://image.tmdb.org/t/p/w500';

  @override
  void initState(){
    super.initState();
    //profileActor = ActorApi().getProfile();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppTheme.bgWhite,
      extendBodyBehindAppBar: true,
      appBar: appBarMenuProfile(context),
      drawer: const SideBar(),

      //BODY CONTENT
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Column(
            children: [

              //INFO ACTOR
              ActorProfile(

                //ACTOR'S NAME
                actorName: Text(
                  "Actor's name",
                  style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleMedium),
                ),

                //ACTOR'S DESCRIPTION
                descriptionActor: Text(
                  "Actor's description",
                  style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.bodySmall),
                ),
              ),

              //TEXT
              Align(
                alignment: Alignment.topLeft, // Ajusta la alineación del texto aquí
                child: Text(
                  "Casted on",
                  style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.titleLarge)
                )
              ),

              //MOVIE LIST
              const Expanded(child: ActorMovieList()),
            ],
          ),
        ),
      ),
    );
  }
}