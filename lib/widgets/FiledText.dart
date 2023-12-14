import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FiledText extends StatelessWidget {
  FiledText({
    super.key,
    required this.fildName,
    required this.hintName,
    required this.onChange,
    required this.valied,
  });
  final fildName;
  final hintName;
  final Function(String) onChange;
  final String? Function(String?)? valied;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          fildName,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : Colors.black87,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: valied,
          style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black.withOpacity(.4),
            hintText: hintName,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onChanged: onChange,
        ),
      ]),
    );
  }
}
