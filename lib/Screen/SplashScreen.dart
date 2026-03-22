
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Screen/OnBordingScreen.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigation();
  }
  _navigation() async{
    await Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onbordingscreen(), ));
    });
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