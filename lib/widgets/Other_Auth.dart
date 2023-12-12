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
          padding: const EdgeInsets.only(top: 30),
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
                ),
                width: 100,
                height: 100,
                child: Icon(Icons.account_box_sharp),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                width: 100,
                height: 100,
                child: Icon(Icons.account_box_sharp),
              ),
            ],
          ),
        )
      ],
    );
  }
}
