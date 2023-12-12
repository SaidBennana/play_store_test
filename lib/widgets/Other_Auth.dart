import 'package:flutter/material.dart';

class Card_Auth_Other extends StatelessWidget {
  const Card_Auth_Other({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "OR",
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage("Assets/images/google.png"),
                  ),
                ),
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("Assets/images/facebook.jpeg"),
                      fit: BoxFit.cover),
                ),
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("Assets/images/ios.png"),
                      fit: BoxFit.cover),
                ),
                width: 50,
                height: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}
