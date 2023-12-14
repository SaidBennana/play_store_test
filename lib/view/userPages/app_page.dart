import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/widgets/FiledText.dart';
import '../../controlle/Auth/feildForm.dart';
import '../../widgets/card_home.dart';

// ignore: must_be_immutable
class app_page extends StatelessWidget {
  app_page({super.key});
  final Is_user_apps = true;

  field_controlle filed_controlle = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff164863),
        actions: [
          IconButton(
            onPressed: () async {
              await bottomSheet_ad_apk();
            },
            icon: Icon(Icons.add),
            color: Colors.white,
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Get.toNamed("HomeScreen");
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xff427D9D),
              ),
              child: Row(
                children: [
                  Image.asset("Assets/images/avater.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cardInfo("Spider man", Icon(Icons.apps)),
                      cardInfo("Emails : 20", Icon(Icons.email)),
                    ],
                  ),
                ],
              ),
            ),
            chcack_User_Acount(),
          ],
        ),
      ),
    );
  }

  Future<dynamic> bottomSheet_ad_apk() {
    return Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "40 will be deducted from your balance when adding the application"),
              SizedBox(
                height: 30,
              ),
              FiledText(
                valied: (Value) {
                  return filed_controlle.validing(Value!, 50, 10);
                },
                fildName: "App Name",
                hintName: "Enter your app name",
                onChange: (vlaue) {},
              ),
              FiledText(
                valied: (Value) {
                  return filed_controlle.validing(Value!, 50, 10);
                },
                fildName: "App link",
                hintName: "Enter your app link",
                onChange: (vlaue) {},
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: MaterialButton(
                  height: 50,
                  color: Color(0xff427D9D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.white,
                      ),
                      Text(
                        "Add image App",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: Text("ADD"),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      isScrollControlled: true,
    );
  }

  Padding cardInfo(String index, Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 4,
          ),
          Text(index),
        ],
      ),
    );
  }

  Widget chcack_User_Acount() {
    if (Is_user_apps) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        height: Get.height * .6,
        child: AnimatedList(
            initialItemCount: 6,
            itemBuilder: (context, index, animation) {
              return cardItems_home(
                Can_select_valid_email: true,
              );
            }),
      );
    } else {
      return Add_email_app();
    }
  }
}

class Add_email_app extends StatelessWidget {
  const Add_email_app({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              child: MaterialButton(
                color: Colors.amber,
                onPressed: () {},
                child: Row(
                  children: [Icon(Icons.add), Text("Add your email")],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
