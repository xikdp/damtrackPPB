import 'package:damtrack/main_page.dart';
import 'package:damtrack/screens/home/home_screens.dart';
import 'package:damtrack/screens/sign_up/SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PassController = TextEditingController();
  bool isHiddenPswrd = true;

  @override
  void dispose() {
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
                      SizedBox(height: 20),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 80,
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
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
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
                            margin: EdgeInsets.symmetric(vertical: 10),
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
                                  obscureText: isHiddenPswrd,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan password",
                                    suffixIcon: InkWell(
                                      onTap: _togglePasswordView,
                                      child: Icon(
                                        Icons.visibility,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    // icon: Icon(Icons.lock),
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
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(
                          context,
                        ).size.width,
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.shade200,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2,
                            ),
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
                          onTap: signIn,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                            ),
                            Text(
                              'or',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Divider(
                                  thickness: 2,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff1959a9),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      5,
                                    ),
                                    topLeft: Radius.circular(
                                      5,
                                    ),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'f',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xFF0389F6,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(
                                      5,
                                    ),
                                    topRight: Radius.circular(
                                      5,
                                    ),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Log in with Facebook',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          padding: EdgeInsets.all(
                            15,
                          ),
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: Text(
                                  'Register here',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 108, 3, 246),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ),
                                  );
                                },
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

  void _togglePasswordView() {
    setState(() {
      isHiddenPswrd = !isHiddenPswrd;
    });
    // if (isHiddenPswrd == true) {
    //  isHiddenPswrd = false;
    //} else {
    //isHiddenPswrd = true;
  }

  Future signIn() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: EmailController.text.trim(),
        password: PassController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}