import 'package:flutter/material.dart';
import 'package:play_store_test/widgets/Button_auth.dart';

import '../../widgets/Other_Auth.dart';

class Sign_in extends StatelessWidget {
  const Sign_in({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              child: Image.asset("Assets/images/image_1.png"),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Text(
                        "Sign In:",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Email:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black.withOpacity(.05),
                            hintText: "Enter Your Email",
                            border: null),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black.withOpacity(.05),
                          hintText: "Enter Your Password",
                          border: null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Button_auth(
                      name: "Sign In",
                    ),
                    Card_Auth_Other(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
