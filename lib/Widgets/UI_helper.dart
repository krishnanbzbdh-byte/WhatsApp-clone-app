import 'dart:ui';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton({
    required VoidCallback callback,
    required String buttonname,
  }) {
    return Container(
      height:50,
      width: 380,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff00A884),
        ),
        onPressed: () {
          callback();
        },
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
  }) {
    return Text(
      text,
      style: TextStyle(fontSize: height, color: color ?? Colors.black,
      fontWeight: fontweight),
    );
  }
  static CustomCantainer(TextEditingController controller){
    return Container(
      height: 50,
      width:50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
