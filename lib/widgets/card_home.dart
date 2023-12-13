import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class cardItems_home extends StatelessWidget {
  const cardItems_home({super.key, this.Can_select_valid_email = false});
  final bool Can_select_valid_email;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: Card(
          elevation: 6,
          color: Color(0xff427D9D),
          child: ListTile(
            title: Text(
              "Game Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Image.asset(
              "Assets/images/image_1.png",
              fit: BoxFit.cover,
            ),
            subtitle: Text(
              "Emails :30",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Can_select_valid_email ? valid_email() : null,
          ),
        ),
      ),
    );
  }
}

class valid_email extends StatelessWidget {
  const valid_email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 50,
        height: 30,
        child: FittedBox(
          fit: BoxFit.cover,
          child: ToggleSwitch(
            cornerRadius: 20.0,
            activeBgColors: [
              [Colors.green[800]!],
              [Colors.red[800]!]
            ],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            initialLabelIndex: 1,
            totalSwitches: 2,
            labels: ['True', 'False'],
            radiusStyle: true,
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
      ),
    );
  }
}
