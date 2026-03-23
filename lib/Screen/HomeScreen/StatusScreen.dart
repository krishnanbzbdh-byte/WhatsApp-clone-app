import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Statusscreen extends StatelessWidget {
  var statusContent = [
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqp9If6FPsrYT4G4xoa_hvaxoJcop8RJxxw&s",
      "name":"Michel",
      "time":"15 min ago"
    },
    {
      "img":"https://thepicturesdp.in/wp-content/uploads/2025/07/ai-whatsapp-dp.jpg",
      "name":"Mukesh",
      "time":"5 min ago"
    },
    {
      "img":"https://play-lh.googleusercontent.com/hlwW8XTZV_Ba1UucbozO-3s0Shg8li9CijJn6GLBqaXqEd664DEM1NcIGy9ajZRO0kYm=w240-h480-rw",
      "name":"My Love",
      "time":"5 hour ago"
    },
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRkpB8RwwLHTUDDB4owQ7_acPqGwlNdwzNFQ&s",
      "name":"Ramesh",
      "time":"12 hour ago"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(children: [
            SizedBox(width: 20,),
            UiHelper.CustomText(text: "Status", height: 20)]),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/woman-with-braided-hair-illustration_1308-174675.jpg?semt=ais_hybrid&w=740&q=80",
                    ),
                    radius: 35,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff008069),
                      radius: 10,
                      child: Center(
                        child: Icon(Icons.add, color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.CustomText(text: "My Status", height: 20),
            subtitle: UiHelper.CustomText(
              text: "Tap to add status update",
              height: 14,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(text: "Recent updates", height: 15),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:NetworkImage(statusContent[index]["img"].toString()),
                ),
                title: UiHelper.CustomText(text: statusContent[index]["name"].toString(), height:14,fontweight: FontWeight.bold),
                subtitle: UiHelper.CustomText(text: statusContent[index]["time"].toString(), height: 13),
              );
            },itemCount: statusContent.length,),
          )
        ],
      ),
    );
  }
}
