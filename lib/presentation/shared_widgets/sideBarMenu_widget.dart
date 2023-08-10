import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme/app_theme.dart';
import '../pages/home/home_screen.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.bgWhite,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          //Info User Account
          UserAccountsDrawerHeader(
            accountName: Text(
              'Usuario',
              style: GoogleFonts.baloo2 (textStyle: AppTheme.lightTheme.textTheme.labelLarge),
            ),
            accountEmail: Text(
              'usuario@email.com',
              style: GoogleFonts.baloo2(color: const Color.fromARGB(255, 0, 0, 0),)
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://i.pinimg.com/564x/00/80/ee/0080eeaeaa2f2fba77af3e1efeade565.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage('https://images.unsplash.com/photo-1623150502742-6a849aa94be4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //'Menú Principal'
          GestureDetector(
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const HomeScreen());
              Navigator.push(context, route);
            },
            child: ListTile(
              title: Text(
                'Menú Principal',
                style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.displaySmall),
              ),
              leading: const Icon(Icons.home, color: Color(0xFF000000),),
            ),
          ),

          //'Cerrar sesión'
          GestureDetector(
            onTap: () {},
            child: ListTile(
              title: Text(
                'Cerrar sesión',
                style: GoogleFonts.baloo2(textStyle: AppTheme.lightTheme.textTheme.displaySmall),
              ),
              leading: const Icon(Icons.exit_to_app_outlined, color: Color(0xFF000000),),
            ),
          ),

        ],
      ),
    );
  }
}