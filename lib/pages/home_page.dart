import 'package:flutter/material.dart';
import 'package:reddit_imitation/components/default_appbar.dart';
import 'package:reddit_imitation/components/thread_cards_grid.dart';
import 'package:reddit_imitation/themes/main_theme.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Reddit",
      debugShowCheckedModeBanner: false,
      theme: createMainTheme(),
      home: const Scaffold(
        appBar: DefaultAppBar(),
        body: ThreadCardsGrid(),
      ),
    );
  }
}