import 'package:flutter/material.dart';

class ActorProfile extends StatelessWidget {
   ActorProfile({
    super.key, required this.actorName, required this.descriptionActor, required this.photoActor}
  );

  final dynamic actorName;
  final dynamic descriptionActor;

  String  photoActor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [

          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [

                      //PROFILE PHOTO
                      CircleAvatar(
                        radius: 34,
                        child: ClipOval(
                          child: Image.network(photoActor,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      //NAME
                      actorName
                    ]
                  )
                ),

                //DESCRIPTION
                Row(
                  children:[
                    const SizedBox(width: 85),
                    Expanded(child: descriptionActor),
                  ]
                ),
              ]
            ),
          ),
        ]
      )
    );
  }

}