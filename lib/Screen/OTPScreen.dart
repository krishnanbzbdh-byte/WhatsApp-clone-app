import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Screen/Login.dart';
import 'package:whatshap_app_project/Screen/ProfileScreen.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Otpscreen extends StatelessWidget {
  String Contact;
  Otpscreen({required this.Contact});
  var otp1Textediting = TextEditingController();
  var otp2Textediting = TextEditingController();
  var otp3Textediting = TextEditingController();
  var otp4Textediting = TextEditingController();
  var otp5Textediting = TextEditingController();
  var otp6Textediting = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            UiHelper.CustomText(
              text: 'Verifying your number',
              height: 22,
              color: Color(0xff00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: 'You’ve tried to register +91 $Contact',
              height: 18,
            ),
            UiHelper.CustomText(
              text: 'recently. Wait before requesting an sms or a call.',
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: ' with your code.', height: 18),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: UiHelper.CustomText(
                    text: 'Wrong number?',
                    height: 18,
                    color: Color(0xff00A884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomCantainer(otp1Textediting),
                SizedBox(width: 10),
                UiHelper.CustomCantainer(otp2Textediting),
                SizedBox(width: 10),
                UiHelper.CustomCantainer(otp3Textediting),
                SizedBox(width: 15),
                UiHelper.CustomCantainer(otp4Textediting),
                SizedBox(width: 10),
                UiHelper.CustomCantainer(otp5Textediting),
                SizedBox(width: 10),
                UiHelper.CustomCantainer(otp6Textediting),
              ],
            ),
            SizedBox(height: 30,),
            UiHelper.CustomText(text: "Didn’t receive code?", height: 18,color: Color(0xff00A884))
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Profilescreen(),));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
