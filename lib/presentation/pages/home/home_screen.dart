import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/home/widgets/appBarMenu_widget.dart';

import '../../../config/theme/app_theme.dart';
import '../../shared_widgets/sideBarMenu_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppTheme.bgWhite,
      appBar: appBarMenu(context),
      drawer: const SideBar(),

      //BODY CONTENT
      body: const SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 5),
      ),
    ));
  }
}