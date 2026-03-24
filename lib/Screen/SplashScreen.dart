
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatshap_app_project/Screen/HomeScreen/HomeScreen.dart';
import 'package:whatshap_app_project/Screen/OnBordingScreen.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  @override
  static const String Keylogin = "login";
  void initState() {
    super.initState();
    navigation();
  }
  navigation() async{
    var sharedpref = await SharedPreferences.getInstance();
    var isLogin = sharedpref.getBool(Keylogin);
    await Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onbordingscreen(),));

      if (isLogin != null) {
        if (isLogin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>Homescreen()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Onbordingscreen()),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>Onbordingscreen()),
        );
      }
    }
    );

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             child: Image.asset('assets/whatshap.png'),
           ),
           SizedBox(
             height: 30,
           ),
           UiHelper.CustomText(text:"WhatsApp", height: 18, fontweight: FontWeight.bold)
         ],
       ),
     ),
   );
  }
}