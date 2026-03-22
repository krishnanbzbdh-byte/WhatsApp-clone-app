import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatshap_app_project/Screen/HomeScreen/HomeScreen.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';
import 'dart:io';

class Profilescreen extends StatefulWidget {
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  var Name = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            UiHelper.CustomText(
              text: 'Profile info',
              height: 22,
              color: Color(0xff00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Please provide your name and an optional",
              height: 18,
            ),
            UiHelper.CustomText(text: "profile photo", height: 18),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                _openbottom(context);
              },
              child:pickedimage==null? CircleAvatar(
                radius: 91,
                backgroundColor: Colors.grey.shade300,
                child: Image.asset(
                  'assets/camera.png',
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ):CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: Name,
                    decoration: InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(color: Color(0xff5E5E5E)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05AA82)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05AA82)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset('assets/happyFace.png'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(context, MaterialPageRoute(builder:  (context) => Homescreen(),));
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openbottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                  ),
                  SizedBox(width: 100),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 80, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
  _pickImage(ImageSource imagesource)async{
    try{
      final photo = await ImagePicker().pickImage(source: imagesource);
      if(photo==null)return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    }
    catch(ex){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString(),style: TextStyle(backgroundColor: Color(0xff05AA82)),)));
    }
  }
}
