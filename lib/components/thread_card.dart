import 'dart:math';
import 'package:intl/intl.dart' as intl;
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ThreadCard extends StatelessWidget{
  final String? imageUrl;
  final String title;
  final DateTime postingTime;
  final String author;
  final String subreddit;
  final int votesCount;
  final int commentsCount;

  ThreadCard({
    super.key,
    this.imageUrl,
    required this.title,
    required this.postingTime,
    required this.author,
    required this.subreddit,
    required this.votesCount,
    required this.commentsCount,
  });

  @override
  Widget build(BuildContext context) {
    Image? image;
    if (imageUrl != null) {
      image = Image.asset(imageUrl!);
    }

    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
          boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black26,
            offset: Offset(0,3),
          ),
        ]
      ),
      child: Column(
        children: [
          image ?? const FlutterLogo(size: 90),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text("${timeago.format(postingTime)} by", style: const TextStyle(color: Colors.grey, fontSize: 12)),
                Text(author, style: const TextStyle(color: Color.fromRGBO(255, 69, 0, 1), fontSize: 12)),
                RichText(
                  text: TextSpan(text:"/r/", style: const TextStyle(color: Colors.grey, fontSize: 12),
                    children: [TextSpan(text: subreddit, style: const TextStyle(color: Color.fromRGBO(255, 69, 0, 1), fontSize: 12))]
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.keyboard_arrow_up),
                        Text(intl.NumberFormat.compactCurrency(
                          symbol: '',
                        ).format(votesCount).toString()),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.messenger, color: Colors.grey,),
                        Text(" ${commentsCount.toString()}"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}