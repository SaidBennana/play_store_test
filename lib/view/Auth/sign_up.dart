import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Button_auth.dart';
import '../../widgets/Other_Auth.dart';

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 230,
              child: Image.asset("Assets/images/image_2.png"),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sgin Up",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SignUp to continue using the app  ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black38,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Email:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password:",
                      style: TextStyle(
                        fontSize: 15,
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
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          child: Text("Do you have an account?"),
                          onTap: () {
                            Get.offNamed(
                              "sign_in",
                            );
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Button_auth(
                      buttonColor: Colors.blue[400]!,
                      name: "Sign Up",
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
