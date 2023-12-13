import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/widgets/Button_auth.dart';
import 'package:play_store_test/widgets/FiledText.dart';
import '../../widgets/card_home.dart';

class app_page extends StatelessWidget {
  const app_page({super.key});
  final Is_user_apps = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff164863),
        actions: [
          IconButton(
            onPressed: () async {
              await Get.bottomSheet(
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  width: double.infinity,
                  height: Get.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FiledText(
                          fildName: "App Name",
                          hintName: "Enter your app name"),
                      FiledText(
                          fildName: "App link",
                          hintName: "Enter your app link"),
                      SizedBox(
                        height: 20,
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
                isScrollControlled: true,
                barrierColor: Colors.blue[500],
                backgroundColor: Colors.black,
              );
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
              print(index);
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
