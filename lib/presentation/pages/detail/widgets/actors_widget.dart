import 'package:flutter/material.dart';
import 'package:movie_app/config/theme/app_theme.dart';

class MovieActors extends StatelessWidget {
  const MovieActors(
    {super.key, required this.actorName, required this.actorRole}
  );

  final actorName;
  final actorRole;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //cambiar con el contador

              Container(
                height: 140,
                width: 115,
                decoration: const BoxDecoration(
                  /* image: DecorationImage(
                    image: NetworkImage('https://sm.ign.com/ign_es/screenshot/default/mahogany-payoff-poster-spain_ww6w.jpg'),
                    fit: BoxFit.cover,
                  ), */
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      title: actorName,
                      subtitle: actorRole,
                    ),
                  ],
                ),
              ),

              Container(
                height: 140,
                width: 115,
                decoration: const BoxDecoration(
                  /* image: DecorationImage(
                    image: NetworkImage('https://sm.ign.com/ign_es/screenshot/default/mahogany-payoff-poster-spain_ww6w.jpg'),
                    fit: BoxFit.cover,
                  ), */
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      title: actorName,
                      subtitle: actorRole,
                    ),
                  ],
                ),
              ),

              Container(
                height: 140,
                width: 115,
                decoration: const BoxDecoration(
                  /* image: DecorationImage(
                    image: NetworkImage('https://sm.ign.com/ign_es/screenshot/default/mahogany-payoff-poster-spain_ww6w.jpg'),
                    fit: BoxFit.cover,
                  ), */
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      title: actorName,
                      subtitle: actorRole,
                    ),
                  ],
                ),
              ),
          ],
        );
      }
    );
  }


}