import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/main.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              height: 150,
              color: Color(0xff427D9D),
              width: double.infinity,
            ),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70, left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? Color.fromARGB(255, 31, 31, 31)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Image.asset(
                        "Assets/images/avater.png",
                        fit: BoxFit.cover,
                        scale: 20,
                      ),
                      Text(
                        "Said bemnnan",
                        style: TextStyle(
                          fontFamily: "Asap",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.control_point_duplicate_sharp,
                                size: 20,
                                color: Color.fromARGB(255, 0, 153, 255),
                              ),
                              Text(
                                "200",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.apps,
                                size: 20,
                                color: Color.fromARGB(255, 169, 5, 202),
                              ),
                              Text(
                                "4",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.done_all,
                                size: 20,
                                color: Color.fromARGB(255, 0, 153, 255),
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        buttons_list_menu()
      ],
    );
  }
}

class buttons_list_menu extends StatelessWidget {
  const buttons_list_menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: ListView(
          children: [
            InkWell(
              onTap: () {},
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    "Home",
                    style: themes.light.textTheme.bodySmall,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.apps_rounded,
                  ),
                  title: Text(
                    "Your apps",
                    style: themes.light.textTheme.bodySmall,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: Text(
                    "Settings",
                    style: themes.light.textTheme.bodySmall,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.support_agent,
                  ),
                  title: Text(
                    "Support & help",
                    style: themes.light.textTheme.bodySmall,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text(
                    "log out",
                    style: themes.light.textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
