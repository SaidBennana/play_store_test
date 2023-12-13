import 'package:flutter/material.dart';

class cardItems_home extends StatelessWidget {
  const cardItems_home({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: Card(
          elevation: 6,
          color: Color(0xff427D9D),
          child: ListTile(
            title: Text(
              "Game Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Image.asset(
              "Assets/images/image_1.png",
              fit: BoxFit.cover,
            ),
            subtitle: Text(
              "Emails :30",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
