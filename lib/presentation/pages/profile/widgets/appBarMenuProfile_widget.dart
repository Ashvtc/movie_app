import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/app_theme.dart';

AppBar appBarMenuProfile(BuildContext context) {
  return AppBar(
    backgroundColor: AppTheme.bgWhite,
    elevation: 0,
    titleTextStyle: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.displayLarge),
    centerTitle: true,
    leading: Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: (){
              Navigator.pop(context);
            },
          child: Image.asset("assets/izquierda.png" ),
        );
      }
    )
  );
}