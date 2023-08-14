import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/home/home_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    //'detail': (BuildContext context) => DetailScreen(movie: snapshot.data[index]),
    //'profile': (BuildContext context) => const ProfileScreen(),
  };


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}