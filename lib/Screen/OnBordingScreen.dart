import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Screen/Login.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Onbordingscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image.asset('assets/frontimg.png')),
            SizedBox(height: 50),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 24,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read out", height: 18),
                UiHelper.CustomText(
                  text: "  Privacy Policy.",
                  height: 18,
                  color: Color(0xff0C42CC),
                ),
                UiHelper.CustomText(
                  text: " Tap “Agree and continue”",
                  height: 18,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: " to accept the", height: 18),
                UiHelper.CustomText(
                  text: "  Teams of Service.",
                  height: 18,
                  color: Color(0xff0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => Login(),));
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
