import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/Get_serves/setting_services.dart';
import 'package:play_store_test/widgets/Button_auth.dart';
import 'package:play_store_test/widgets/FiledText.dart';

import '../../controlle/Auth/feildForm.dart';
import '../../widgets/Other_Auth.dart';

// ignore: must_be_immutable
class Sign_in extends GetView<setting_services> {
  Sign_in({super.key});

  field_controlle filed_controlle = Get.find();
  late String email, password;
  GlobalKey<FormState> formstatus = GlobalKey<FormState>();

  signIn() async {
    if (formstatus.currentState!.validate()) {
      await controller.signin(email, password);
      if (controller.auth.currentUser!.emailVerified) {
        Get.offNamed("HomeScreen");
      } else {
        Get.offNamed("verfiyEmail");
      }
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
              child: Image.asset("Assets/images/image_1.png"),
            ),
            Form(
              key: formstatus,
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
                            "Sign In",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Signin to continue using the app  ",
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
                        fildName: "Email",
                        hintName: "Enter youe Email",
                        onChange: (value) {
                          email = value;
                        }),
                    FiledText(
                        valied: (Value) {
                          return filed_controlle.validing(Value!, 50, 10);
                        },
                        fildName: "Password",
                        hintName: "Enter Password",
                        onChange: (value) {
                          password = value;
                        }),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.offNamed("/sign_up");
                            },
                            child: Text("Create Account!"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text("Forgot your password?"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Button_auth(
                      onPrass: () async {
                        await signIn();
                      },
                      buttonColor: Colors.blue[400]!,
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
