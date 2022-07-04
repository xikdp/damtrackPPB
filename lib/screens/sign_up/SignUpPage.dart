import 'package:damtrack/screens/sign_in/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../main.dart';
// import 'package:firebasetest/services/auth_services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController NameController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PassController = TextEditingController();
  final TextEditingController ConfirmPassController = TextEditingController();

  @override
  void dispose() {
    NameController.dispose();
    EmailController.dispose();
    PassController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .2),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'Damri Location Tracker',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 250, 201, 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Nama",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.start,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan nama",
                                    suffixIcon: Icon(
                                      Icons.person,
                                      color: Colors.black54,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    fillColor: Color(
                                      0xfff3f3f4,
                                    ),
                                    filled: true,
                                  ),
                                  controller: NameController,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.start,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan email",
                                    suffixIcon: Icon(
                                      Icons.email,
                                      color: Colors.black54,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                    fillColor: Color(
                                      0xfff3f3f4,
                                    ),
                                    filled: true,
                                  ),
                                  controller: EmailController,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.start,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan password",
                                    suffixIcon: Icon(
                                      Icons.visibility,
                                      color: Colors.black54,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                    fillColor: Color(
                                      0xfff3f3f4,
                                    ),
                                    filled: true,
                                  ),
                                  controller: PassController,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Confirm Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.start,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan ulang password",
                                    suffixIcon: Icon(
                                      Icons.visibility,
                                      color: Colors.black54,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                    fillColor: Color(
                                      0xfff3f3f4,
                                    ),
                                    filled: true,
                                  ),
                                  controller: ConfirmPassController,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.shade200,
                              offset: Offset(
                                2,
                                4,
                              ),
                              blurRadius: 5,
                              spreadRadius: 2,
                            )
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: const [
                              Color.fromARGB(255, 250, 201, 20),
                              Color.fromARGB(255, 204, 146, 0),
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: signUp,
                          child: new Text("Sign Up",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Already have an account ?',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Login',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 108, 3, 246),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    if (PassController.text == ConfirmPassController.text) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: EmailController.text.trim(),
          password: PassController.text.trim(),
        );
      } on FirebaseAuthException catch (e) {
        print(e);
      }

      User? uidUser = FirebaseAuth.instance.currentUser;

    

    
      signUp;
      await FirebaseFirestore.instance.collection("users").doc(uidUser?.uid).set({
        'name': NameController.text,
        'email': EmailController.text,
        'password': PassController.text,
        'uid': uidUser?.uid
      });

      NameController.text = '';
      EmailController.text = '';
      PassController.text = '';

      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Successfully Sign Up !'),
          content: const Text('Login for access app !'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  )),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Your Password not Matching'),
          content: const Text('Match your password first'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  )),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }

  }
}
