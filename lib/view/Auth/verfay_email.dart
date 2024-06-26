import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/Get_serves/setting_services.dart';
import 'package:play_store_test/widgets/Button_auth.dart';

class verfayEmail extends GetView<setting_services> {
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
              style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "You will receive a message in the email you registered with",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87,
                    fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: TextButton(
                onPressed: () async {
                  if (!controller.auth.currentUser!.emailVerified) {
                    await controller.auth.currentUser!.sendEmailVerification();
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.info,
                        animType: AnimType.bottomSlide,
                        title: "Virfiy Email",
                        desc: "تحقق من بريدك الاكترني")
                      ..show();
                  } else {
                    Get.offNamed("sign_in");
                  }
                },
                child: Text(
                  "Resend Code",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: Button_auth(
                  onPrass: () {
                    Get.offNamed("sign_in");
                  },
                  name: "Sign In",
                  buttonColor: Color(0xff5FBDFF)),
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
