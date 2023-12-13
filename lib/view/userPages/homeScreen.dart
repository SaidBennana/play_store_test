import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/DrawerMenu.dart';
import '../../widgets/card_home.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

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
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Color(0xffDDF2FD),
                size: 30,
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        width: 250,
        child: DrawerMenu(),
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
              child: ListView(scrollDirection: Axis.horizontal, children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Card(
                    elevation: 6,
                    child: Stack(
                      children: [
                        Image.asset("Assets/images/image_1.png"),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(.5),
                                  Colors.black.withOpacity(0.1)
                                ],
                                stops: [
                                  .1,
                                  .3
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Spider man",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Emails : 20",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: AnimatedList(
                    initialItemCount: 6,
                    itemBuilder: (context, index, animation) {
                      print(index);
                      return cardItems_home();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
