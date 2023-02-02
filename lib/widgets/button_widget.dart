import 'package:flutter/material.dart';
import 'package:moto/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
    final VoidCallback? onHold;

  final String text;

  const ButtonWidget({
    required this.onPressed,
    required this.text,
    this.onHold = null,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onLongPress: onHold,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minWidth: 200,
      color: Colors.green,
      onPressed: onPressed,
      child: TextBold(text: text, fontSize: 18, color: Colors.white),
    );
  }
}
