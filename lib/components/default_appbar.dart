import 'package:flutter/material.dart';
import 'package:reddit_imitation/themes/main_theme.dart';
import 'dropdown_button.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DefaultAppBar({super.key});

  static const iconsPadding = 18.0;

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(iconsPadding),
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      title: const Padding(
        padding: EdgeInsets.all(iconsPadding),
        child: FlutterLogo(size: 32),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(iconsPadding),
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child:DropDownButton(),
      )
    );
  }
}