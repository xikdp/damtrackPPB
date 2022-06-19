import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:damtrack/screens/profile/components/textfield_profile_content.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatelessWidget {
  late String myEmail, myPhone, myName, myPassword;
  Body({Key? key}) : super(key: key);

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
  _fetch() async {

      final firebaseUser = FirebaseAuth.instance.currentUser!;
      if (firebaseUser != null) {
        await FirebaseFirestore.instance
        .collection('users')
        .doc(firebaseUser.uid)
        .get()
        .then((ds) {
          myEmail= ds.data()! ['email'];
          myPhone= ds.data()! ['phone'];
          myName= ds.data()! ['name'];
          myPassword= ds.data()! ['password'];
        }).catchError((e) {
          print(e);
        });
      }
    }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> users =
        FirebaseFirestore.instance.collection('users').snapshots();

    return Material(
      child: FutureBuilder(
        future: _fetch(),
        builder: (context, snapshot){
          if (snapshot.connectionState != ConnectionState.done)
            return Center(child: CircularProgressIndicator());
          final TextEditingController nameController =
            TextEditingController(text: "$myName");
          final TextEditingController phoneController =
            TextEditingController(text: "$myPhone");
          final TextEditingController emailController =
            TextEditingController(text: "$myEmail");
          final TextEditingController passwordController =
            TextEditingController(text: "$myPassword");

          return textfield_profile_content(
            nameController: nameController,
            phoneController: phoneController,
            emailController: emailController,
            passwordController: passwordController
          );
        }
            ),
    );

  }
}