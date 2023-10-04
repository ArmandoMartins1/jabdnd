import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  String text;
  String image;
  Function() function;

  Button(
      {super.key, required this.text, this.image = '', required this.function});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        
        onPressed: widget.function,
        child: Row(
          children: [
            if (widget.image.isNotEmpty) Image.asset(widget.image),
            Text(widget.text),
            
          ],
        
        ));
  }
}
