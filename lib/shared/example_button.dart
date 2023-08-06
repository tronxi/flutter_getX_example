import 'package:flutter/material.dart';

class ExampleButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ExampleButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColorLight),
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor)),
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(color: Colors.white)));
  }
}
