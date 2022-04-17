import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class textfield_profile_content extends StatelessWidget {
  const textfield_profile_content({
    Key? key,
    required this.nameController,
    required this.phoneController,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // body: Stack(
      // alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 1.5,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.amber.withOpacity(0.9), width: 5),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/dd.jpg"),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            child: IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 450,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: 'Name'),
                    controller: nameController,
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Phone'),
                    controller: phoneController,
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    controller: emailController,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                    controller: passwordController,
                  ),
                  TextField(
                    obscureText: true,
                    decoration:
                        const InputDecoration(labelText: 'Confirm Password'),
                    controller: passwordController,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Confirmation'),
                          content: const Text('Are your sure to change your profile ?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          "Confirm Update",
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
      // ),
    );
  }
}
