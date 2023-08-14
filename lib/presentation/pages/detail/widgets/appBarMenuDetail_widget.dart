import 'package:flutter/material.dart';

AppBar appBarMenuDetail(BuildContext context) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Image.asset("assets/cerrar.png",),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}