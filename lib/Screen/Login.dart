import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatshap_app_project/Screen/OTPScreen.dart';
import 'package:whatshap_app_project/Widgets/UI_helper.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String selectedCountry = "India";

  List<String> countries = [
    "India",
    "America",
    "Africa",
    "Italy",
    "Russia",
    "France",
    "Germany",
  ];
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            UiHelper.CustomText(
              text: 'Enter Your Mobile Number',
              height: 22,
              color: Color(0xff00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "WhatsApp will need to verify your phone",
              height: 18,
              color: Color(0xff5E5E5E),
            ),
            UiHelper.CustomText(
              text: "number. Carrier charges may apply.",
              height: 18,
              color: Color(0xff5E5E5E),
            ),
            UiHelper.CustomText(
              text: "What’s my number?",
              height: 18,
              color: Color(0xff00A884),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country.toString()),
                    value: country,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff00A884)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "+91",
                        hintStyle: TextStyle(fontSize: 18),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 190,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          login(phoneController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Enter phone number"),backgroundColor: Colors.green,));
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Otpscreen(Contact: "$phonenumber",)),
      );
    }
  }
}
