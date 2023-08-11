import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/home/home_screen.dart';

import '../../presentation/pages/detail/detail_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'detail': (BuildContext context) => const DetailScreen(),
    //'profile': (BuildContext context) => const ProfileScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}