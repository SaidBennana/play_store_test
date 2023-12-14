import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/Get_serves/setting_services.dart';

import '../../controlle/Auth/feildForm.dart';
import '../../widgets/Button_auth.dart';
import '../../widgets/FiledText.dart';
import '../../widgets/Other_Auth.dart';
// StatelessWidget

// ignore: must_be_immutable
class Sign_up extends GetView<setting_services> {
  Sign_up({super.key});

  late String email;
  late String user_name;
  late String password;

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  field_controlle filed_controlle = Get.find();

  sginUp() async {
    if (formState.currentState!.validate()) {
      await controller.signUp(email, password);
      if (!controller.auth.currentUser!.emailVerified) {
        await controller.auth.currentUser!.sendEmailVerification();
        Get.offNamed("verfiyEmail");
      }
      print("Sign up");
    } else {
      print("is Not valied");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: Image.asset("Assets/images/image_2.png"),
            ),
            Form(
              key: formState,
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
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SignUp to continue using the app",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    FiledText(
                      valied: (Value) {
                        return filed_controlle.validing(Value!, 50, 10);
                      },
                      fildName: "username",
                      hintName: "Enter youe name",
                      onChange: (value) {
                        user_name = value;
                      },
                    ),
                    FiledText(
                      valied: (Value) {
                        return filed_controlle.validing(Value!, 50, 10);
                      },
                      fildName: "Email",
                      hintName: "Enter youe Email",
                      onChange: (value) {
                        email = value;
                      },
                    ),
                    FiledText(
                      fildName: "Password",
                      hintName: "Enter Password",
                      onChange: (value) {
                        password = value;
                      },
                      valied: (Value) {
                        print(Value);
                        return filed_controlle.validing(Value!, 50, 10);
                      },
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
                      onPrass: () async {
                        await sginUp();
                      },
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
