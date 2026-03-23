import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Callsscreen extends StatelessWidget{
  var CallContent = [{
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFLO_7alYFyEkGw-YjVOuvctoNwqyxbPJYhAW8NM8OLVqPAIdDus7EsGzLJ5ikTdevS4QN2fMTMwZlWPGq45BT7BYhzuGUhhDUruxL-z8&s=10",
    "name":"Mukesh",
    "callTime":"25 min ago"
  },
{
"img":"https://upload.wikimedia.org/wikipedia/commons/1/1b/MC_STAN.jpg",
"name":"MC stan",
"callTime":"5 min ago"
},
{
  "img":"https://cdn.britannica.com/05/236505-050-17B6E34A/Elon-Musk-2022.jpg",
"name":"Elon Musk",
"callTime":"5 hour ago"
},
{
  "img":"https://www.shutterstock.com/editorial/image-editorial/McT8Q60fMcj4g056NDQzMjY=/former-president-donald-trump-prepares-speak-iowa-440nw-14294892k.jpg",
"name":"Donal Trump",
"callTime":"1 day ago"
},
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFLO_7alYFyEkGw-YjVOuvctoNwqyxbPJYhAW8NM8OLVqPAIdDus7EsGzLJ5ikTdevS4QN2fMTMwZlWPGq45BT7BYhzuGUhhDUruxL-z8&s=10",
      "name":"Mukesh",
      "callTime":"25 min ago"
    },
    {
      "img":"https://upload.wikimedia.org/wikipedia/commons/1/1b/MC_STAN.jpg",
      "name":"MC stan",
      "callTime":"5 min ago"
    },
    {
      "img":"https://cdn.britannica.com/05/236505-050-17B6E34A/Elon-Musk-2022.jpg",
      "name":"Elon Musk",
      "callTime":"5 hour ago"
    },
    {
      "img":"https://www.shutterstock.com/editorial/image-editorial/McT8Q60fMcj4g056NDQzMjY=/former-president-donald-trump-prepares-speak-iowa-440nw-14294892k.jpg",
      "name":"Donal Trump",
      "callTime":"1 day ago"
    },
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFLO_7alYFyEkGw-YjVOuvctoNwqyxbPJYhAW8NM8OLVqPAIdDus7EsGzLJ5ikTdevS4QN2fMTMwZlWPGq45BT7BYhzuGUhhDUruxL-z8&s=10",
      "name":"Mukesh",
      "callTime":"25 min ago"
    },
    {
      "img":"https://upload.wikimedia.org/wikipedia/commons/1/1b/MC_STAN.jpg",
      "name":"MC stan",
      "callTime":"5 min ago"
    },
    {
      "img":"https://cdn.britannica.com/05/236505-050-17B6E34A/Elon-Musk-2022.jpg",
      "name":"Elon Musk",
      "callTime":"5 hour ago"
    },
    {
      "img":"https://www.shutterstock.com/editorial/image-editorial/McT8Q60fMcj4g056NDQzMjY=/former-president-donald-trump-prepares-speak-iowa-440nw-14294892k.jpg",
      "name":"Donal Trump",
      "callTime":"1 day ago"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              UiHelper.CustomText(text: "Recent", height: 18)
            ],
          ),
           Expanded(
             child: ListView.builder(itemBuilder:(context,index){
               return ListTile(
                 leading: CircleAvatar(
                   radius: 25,
                   backgroundImage: NetworkImage(CallContent[index]["img"].toString()),
                 ),
                 title: UiHelper.CustomText(text: CallContent[index]["name"].toString(), height:14,fontweight: FontWeight.bold),
                 subtitle: UiHelper.CustomText(text: CallContent[index]["callTime"].toString(), height: 13),
                 trailing: CircleAvatar(
                   radius: 15,
                 child: Icon(Icons.call,color:Color(0xff008069), ),),
               );
             },itemCount: CallContent.length,),
           )
        ],
      ),
    );
  }
}