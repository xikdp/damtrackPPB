import 'package:damtrack/screens/profile/components/textfield_profile_content.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  Widget textfield({@required hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              // fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
        TextEditingController(text: "Smith");
    final TextEditingController phoneController =
        TextEditingController(text: "087788990077");
    final TextEditingController emailController =
        TextEditingController(text: "smith00@gmail.com");
    final TextEditingController passwordController =
        TextEditingController(text: "01122001");
    //textfield form edit profile
    return textfield_profile_content(
        nameController: nameController,
        phoneController: phoneController,
        emailController: emailController,
        passwordController: passwordController);
  }
}