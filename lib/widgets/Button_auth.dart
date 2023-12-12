import 'package:flutter/material.dart';

class Button_auth extends StatelessWidget {
  const Button_auth({
    super.key,
    required this.name,
  });
  final name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(20),
      ),
      height: 50,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Sign In",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
