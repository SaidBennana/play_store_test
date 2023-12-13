import 'package:flutter/material.dart';
import 'package:play_store_test/widgets/Button_auth.dart';

class verfayEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xff5FBDFF),
              radius: 35,
              child: Icon(
                Icons.email,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 50,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Verify your email",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "You will receive a message in the email you registered with",
                style: TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Resend Code",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: Button_auth(
                  name: "Confirm email", buttonColor: Color(0xff5FBDFF)),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
