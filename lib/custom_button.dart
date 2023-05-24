import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton( this.buttonText, this.onPress, { Key? key}) : super(key: key);
  final String buttonText;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 18),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(buttonText),
    );
  }
}
