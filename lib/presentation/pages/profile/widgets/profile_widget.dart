import 'package:flutter/material.dart';

class ActorProfile extends StatelessWidget {
  const ActorProfile({
    super.key, required this.actorName, required this.descriptionActor}
  );

  final dynamic actorName;
  final dynamic descriptionActor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [

        //PROFILE PICTURE
          CircleAvatar(
            radius: 34,
            child: ClipOval(
              child: Image.network('https://i.pinimg.com/564x/00/80/ee/0080eeaeaa2f2fba77af3e1efeade565.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //DESCRIPTION
          Expanded(
            child: ListTile(
              title: actorName,
              subtitle: descriptionActor,
            ),
          )

        ],
      ),
    );
  }

}