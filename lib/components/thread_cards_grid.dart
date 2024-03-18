import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reddit_imitation/components/thread_card.dart';

class ThreadCardsGrid extends StatelessWidget{
  const ThreadCardsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: 100,
      padding: EdgeInsets.all(16),
      crossAxisCount: 2,
      mainAxisSpacing: 18,
      crossAxisSpacing: 18,
      itemBuilder: (BuildContext context, int index) {
        String title = "a";
        title *= Random().nextInt(500);

        return ThreadCard(
          imageUrl: "assets/images/file.jpg",
          title: '${index} Example title Example titleExample title ' * (1+Random().nextInt(5)),
          author: 'Example author author',
          postingTime: DateTime.now(),
          subreddit: '34',
          votesCount: Random().nextInt(5000),
          commentsCount: Random().nextInt(800),
        );
      },
    );
  }

}