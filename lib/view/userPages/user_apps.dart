import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/DrawerMenu.dart';
import '../../widgets/card_home.dart';

class user_apps extends StatelessWidget {
  const user_apps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff164863),
        actions: [
          IconButton(
            onPressed: () {},
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
                      cardInfo("Said Bennan", Icon(Icons.face)),
                      cardInfo("SaidBennan@gmail.com", Icon(Icons.email)),
                      cardInfo("3", Icon(Icons.attach_money)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: Get.height * .6,
              child: AnimatedList(
                  initialItemCount: 6,
                  itemBuilder: (context, index, animation) {
                    print(index);
                    return cardItems_home();
                  }),
            ),
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
}
