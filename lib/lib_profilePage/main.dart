import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Nama User', 'Alamat', 'Kontak', 'Email'];
    final List<int> colorCodes = <int>[600, 500, 300, 100];

    ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          height: 50,
          color: Colors.amber,
          child: Center(
            child: Text(
              '${entries[index]}'
            )
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 201, 201, 87),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.jpg')
            ),
            Text(
              "User's name",
              style: TextStyle(
                fontSize: 40.0,
                color : Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              )
            )
          ],
        ),)
    );
  }
}
