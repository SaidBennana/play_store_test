import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/Get_serves/setting_services.dart';
import '../../widgets/Button_auth.dart';
import '../../widgets/FiledText.dart';
// StatelessWidget

// ignore: must_be_immutable
class restart_password extends GetView<setting_services> {
  restart_password({super.key});

  late String email;

  Future sendRester() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(),
              Container(
                height: 200,
                child: Image.asset("Assets/images/image_2.png"),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Restart password",
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: FiledText(
                    fildName: "Email",
                    hintName: "enter your email",
                    onChange: (value) {
                      email = value;
                    },
                    valied: (value) {
                      return null;
                    }),
              ),
              SizedBox(
                width: 200,
                child: Button_auth(
                    name: "Restart password",
                    buttonColor: Color.fromARGB(255, 2, 134, 241),
                    onPrass: () async {
                      try {
                        await sendRester();
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.info,
                          dismissOnTouchOutside: false,
                          btnOk: TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Get.offNamed("sign_in");
                            },
                          ),
                          desc: "لقد تما ارسال الرابط لاعادة كلمة السر",
                        )..show();
                      } catch (e) {
                        AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            desc: "تحقق من البريد الاكتروني ادا كانا صحيحا")
                          ..show();
                      }
                    }),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
