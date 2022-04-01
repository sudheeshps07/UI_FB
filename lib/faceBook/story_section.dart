import 'package:appnew/images/assets.dart';
import 'package:appnew/faceBook/stories_cards.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to story',
            avatar: one,
            story: one,
            creatStorySts: true,
            displayBorder: true,
          ),
          StoryCard(
              labelText: 'Cristiano Ronaldo',
              avatar: cr07,
              story: cr07,
              creatStorySts: false,
              displayBorder: true),
          StoryCard(
              labelText: 'Pogba',
              avatar: pogba,
              story: pogba,
              creatStorySts: false,
              displayBorder: true),
          StoryCard(
            labelText: 'Bruno Fernandus',
            avatar: bruno,
            story: bruno,
            creatStorySts: false,
            displayBorder: true,
          ),
          StoryCard(
              labelText: 'uinted',
              avatar: muted,
              story: muted,
              creatStorySts: false,
              displayBorder: true),
          StoryCard(
              labelText: 'united official',
              avatar: three,
              story: three,
              creatStorySts: false,
              displayBorder: true),
          StoryCard(
              labelText: 'james',
              avatar: four,
              story: four,
              creatStorySts: false,
              displayBorder: true),
        ],
      ),
    );
  }
}
