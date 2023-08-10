import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/app_theme.dart';

AppBar appBarMenu(BuildContext context) {
  return AppBar(
    backgroundColor: AppTheme.bgWhite,
    elevation: 0,title: const Text('Latest'),
    titleTextStyle: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.displayLarge),
    centerTitle: true,
    leading: Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Image.asset("assets/lista.png" ),
        );
      }
    )
  );
}