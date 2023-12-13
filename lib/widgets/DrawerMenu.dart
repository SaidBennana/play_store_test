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
                          color: Get.isDarkMode ? Colors.white : Colors.black,
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
            button_mune(
                name: "Home",
                icon: Icon(Icons.home),
                onTap: () {
                  print("home");
                }),
            button_mune(
                name: "Your Apps",
                icon: Icon(Icons.apps_rounded),
                onTap: () {
                  Get.toNamed("User_apps");
                }),
            button_mune(
                name: "Settings",
                icon: Icon(Icons.settings),
                onTap: () {
                  print("your4");
                }),
            button_mune(
                name: "Support & Help",
                icon: Icon(Icons.support_agent),
                onTap: () {
                  print("your6");
                }),
            button_mune(
                name: "log out",
                icon: Icon(Icons.logout),
                onTap: () {
                  print("your7");
                }),
          ],
        ),
      ),
    );
  }
}

class button_mune extends StatelessWidget {
  const button_mune(
      {super.key, required this.name, required this.icon, required this.onTap});
  final String name;
  final Icon icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: ListTile(
          leading: icon,
          title: Text(
            name,
            style: themes.light.textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
