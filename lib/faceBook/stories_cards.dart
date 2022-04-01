//import 'package:appnew/Buttons/AppbarButtun.dart';
import 'package:appnew/images/assets.dart';
import 'package:flutter/material.dart';

import '../Buttons/AppbarButtun.dart';
import 'Avatars.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool creatStorySts;
  final bool displayBorder;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.creatStorySts = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            top: 5,  left: 5,

            child: creatStorySts==true
                ? Circular_Button(
                    buttonIcon: Icons.add,
                    buttonAction: () {
                      print('add story');
                    },
                    iconColor: Colors.red,
                  )
                : Avatars(
                    displayAvatars: avatar,
                    displaysts: false,
                    displayBorder: displayBorder,
                    width: 35,
                    height: 35),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              labelText != null ? labelText : 'N/A',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
