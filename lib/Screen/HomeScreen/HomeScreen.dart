import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Screen/HomeScreen/CallsScreen.dart';
import 'package:whatshap_app_project/Screen/HomeScreen/CameraScreen.dart';
import 'package:whatshap_app_project/Screen/HomeScreen/ChatsScreen.dart';
import 'package:whatshap_app_project/Screen/HomeScreen/StatusScreen.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs: [Tab(icon: Icon(Icons.camera_alt,color: Colors.white,),),
          Tab(text:"CHATS",),
          Tab(text:"STATUS"),
          Tab(text:"CALLS"),
          ],indicatorColor: Colors.white,
          labelColor: Colors.white,),
          title: UiHelper.CustomText(text: "WhatsApp", height:25,color: Colors.white),
          backgroundColor: Color(0xff008069),
          toolbarHeight: 70,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon:Image.asset('assets/Search.png')),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp,color: Colors.white,)),
                ],
              ),
            ),
          ],
        ),
        body: TabBarView(children: [
          Camerascreen(),
          ChatsScreen(),
          Statusscreen(),
          Callsscreen(),
        ]),
      ),
    );
  }
}