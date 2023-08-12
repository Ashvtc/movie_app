import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/profile/profile_screen.dart';

class MovieActors extends StatelessWidget {
  const MovieActors(
    {super.key, required this.actorName, required this.actorRole}
  );

  final dynamic actorName;
  final dynamic actorRole;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //cambiar con el contador

              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(builder: (context) => const ProfileScreen());
                  Navigator.push(context, route);
                },

                child: Container(
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