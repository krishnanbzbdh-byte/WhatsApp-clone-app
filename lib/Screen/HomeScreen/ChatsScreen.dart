import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb3HblYMdwN4k3995aAftqw7E39Hl1tpsNxw&s",
      "name": "Aron",
      "lastmsg": "Kya bhai kal aayega",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwIyQ53XuvvuT_-CrAXw3pjzsgruMtZP2yIA&s",
      "name": "MY Friend",
      "lastmsg": "bak bskd",
      "time": "05:01 pm",
      "msg": "1",
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb3HblYMdwN4k3995aAftqw7E39Hl1tpsNxw&s",
      "name": "Aron",
      "lastmsg": "Kya bhai kal aayega",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwIyQ53XuvvuT_-CrAXw3pjzsgruMtZP2yIA&s",
      "name": "MY Friend",
      "lastmsg": "bak bskd",
      "time": "05:01 pm",
      "msg": "1",
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb3HblYMdwN4k3995aAftqw7E39Hl1tpsNxw&s",
      "name": "Aron",
      "lastmsg": "Kya bhai kal aayega",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwIyQ53XuvvuT_-CrAXw3pjzsgruMtZP2yIA&s",
      "name": "MY Friend",
      "lastmsg": "bak bskd",
      "time": "05:01 pm",
      "msg": "1",
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb3HblYMdwN4k3995aAftqw7E39Hl1tpsNxw&s",
      "name": "Aron",
      "lastmsg": "Kya bhai kal aayega",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwIyQ53XuvvuT_-CrAXw3pjzsgruMtZP2yIA&s",
      "name": "MY Friend",
      "lastmsg": "bak bskd",
      "time": "05:01 pm",
      "msg": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 53,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 14,
                    color: Colors.grey,
                  ),
                  trailing: Column(
                    children: [
                      UiHelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 13,
                        color: Color(0xff026500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff026500),
                          radius: 12,
                          child: UiHelper.CustomText(
                            text: arrContent[index]["msg"].toString(),
                            height: 17,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff008665),
        child: Image.asset('assets/icon.png'),
      ),
    );
  }
}
