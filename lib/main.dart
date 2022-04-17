import 'package:damtrack/screens/halte_information/halte_information_screen.dart';
import 'package:damtrack/screens/profile/profile_page.dart';
import 'package:damtrack/screens/home/home_screens.dart';
import 'package:damtrack/screens/sign_in/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'screens/home/components/header_with_searchbox.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Damtrack',
      theme: ThemeData(
        // scaffoldBackgroundColor: Color.fromARGB(255, 255, 220, 65),
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
// class MyApp extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return MaterialApp(
//         home: DefaultTabController(
//           length: 4,
//           child: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.amber,
//               title: Text("Damtrack"),
//               elevation: 0,
//             ),
//             bottomNavigationBar: menu(),
//             body: TabBarView(
//               physics: NeverScrollableScrollPhysics(),
//               children: [
//                 HomeScreen(),
//                 Container(child: Icon(Icons.directions_bike)),
//                 HalteInformation(),
//                 Profile(),
//               ],
//             ),
//           ),
//         ),
//       );
//     }

//      Widget menu() {
//       return Container(
//         color: Colors.amber,
//         child: TabBar(
//           labelColor: Colors.white,
//           unselectedLabelColor: Colors.white54,
//           indicatorSize: TabBarIndicatorSize.tab,
//           indicatorPadding: EdgeInsets.all(5.0),
//           indicatorColor: Colors.white,
//           tabs: [
//             Tab(
//               text: "Home",
//               icon: Icon(Icons.home),
//             ),
//             Tab(
//               text: "Schedule",
//               icon: Icon(Icons.schedule),
//             ),
//             Tab(
//               text: "Halte",
//               icon: Icon(Icons.directions_bus),
//             ),
//             Tab(
//               text: "Profile",
//               icon: Icon(Icons.people_alt_sharp),
//             ),
//           ],
//         ),
//       );  
//   }  
// }  