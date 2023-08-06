import 'package:flutter/material.dart';

class ExampleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const ExampleAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(title),
        automaticallyImplyLeading: false);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
