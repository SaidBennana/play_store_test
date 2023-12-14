import 'package:flutter/material.dart';

class Button_auth extends StatelessWidget {
  const Button_auth({
    super.key,
    required this.name,
    required this.buttonColor,
    required this.onPrass,
  });
  final name;
  final Color buttonColor;
  final VoidCallback onPrass;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 40,
      child: MaterialButton(
        onPressed: onPrass,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
