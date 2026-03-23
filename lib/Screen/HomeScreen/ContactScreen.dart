import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Contactscreen extends StatelessWidget {
  var contactContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFLO_7alYFyEkGw-YjVOuvctoNwqyxbPJYhAW8NM8OLVqPAIdDus7EsGzLJ5ikTdevS4QN2fMTMwZlWPGq45BT7BYhzuGUhhDUruxL-z8&s=10",
      "name": "Mukesh",
      "status": "busy",
    },
    {
      "img": "https://upload.wikimedia.org/wikipedia/commons/1/1b/MC_STAN.jpg",
      "name": "MC stan",
      "status": "Urgent call only",
    },
    {
      "img":
          "https://cdn.britannica.com/05/236505-050-17B6E34A/Elon-Musk-2022.jpg",
      "name": "Elon Musk",
      "status": "Milioner",
    },
    {
      "img":
          "https://www.shutterstock.com/editorial/image-editorial/McT8Q60fMcj4g056NDQzMjY=/former-president-donald-trump-prepares-speak-iowa-440nw-14294892k.jpg",
      "name": "Donal Trump",
      "status": "president",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFLO_7alYFyEkGw-YjVOuvctoNwqyxbPJYhAW8NM8OLVqPAIdDus7EsGzLJ5ikTdevS4QN2fMTMwZlWPGq45BT7BYhzuGUhhDUruxL-z8&s=10",
      "name": "Mukesh",
      "status": "busy",
    },
    {
      "img": "https://upload.wikimedia.org/wikipedia/commons/1/1b/MC_STAN.jpg",
      "name": "MC stan",
      "status": "Urgent call only",
    },
    {
      "img":
          "https://cdn.britannica.com/05/236505-050-17B6E34A/Elon-Musk-2022.jpg",
      "name": "Elon Musk",
      "status": "Milioner",
    },
    {
      "img":
          "https://www.shutterstock.com/editorial/image-editorial/McT8Q60fMcj4g056NDQzMjY=/former-president-donald-trump-prepares-speak-iowa-440nw-14294892k.jpg",
      "name": "Donal Trump",
      "status": "president",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008665),
        title: UiHelper.CustomText(
          text: "Select Contact",
          height: 18,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: (){},icon: Icon(Icons.search,color: Colors.white,),),
          IconButton(onPressed: (){},icon: Icon(Icons.more_vert_sharp,color: Colors.white,),),
        ],
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(contactContent[index]["img"].toString()),
          ),
          title: UiHelper.CustomText(text: contactContent[index]["name"].toString(), height: 18,fontweight: FontWeight.bold),
          subtitle: UiHelper.CustomText(text:contactContent[index]["status"].toString(), height:14),
        );
      },itemCount: contactContent.length,),
    );
  }
}
