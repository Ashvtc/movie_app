import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/home/home_screen.dart';

AppBar appBarMenuDetail(BuildContext context) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        final route = MaterialPageRoute(builder: (context) => const HomeScreen());
        Navigator.push(context, route);
      },
      child: Image.asset("assets/cerrar.png",),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}