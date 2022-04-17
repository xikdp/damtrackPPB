// import 'package:damtrack/screens/halte_information/halte_information_screen.dart';
// import 'package:damtrack/screens/profile/profile_page.dart';
// import 'package:damtrack/screens/home/home_screens.dart';
// import 'package:damtrack/screens/sign_in/LoginPage.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// // import 'screens/home/components/header_with_searchbox.dart';

// class BottomNavbar extends StatelessWidget {
//   const BottomNavbar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container (
//       padding: EdgeInsets.only(
//         left: 20*2,
//         right: 20*2,
//         bottom: 20/2,
//       ),
//       height: 70,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, -5),
//             blurRadius: 20,
//             color: Colors.grey,
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.home, semanticLabel: "Home"),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(
//                   builder: (context) => HomeScreen(),
//                 ),
//               );
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.schedule, semanticLabel: "Schedule"), 
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.directions_bus, semanticLabel: "Halte"), 
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(
//                   builder: (context) => HalteInformation(),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }



// // void main() async{
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp();
// //   runApp(BottomNavbar());
// // }

// // class NavbarTabView extends StatelessWidget {
// //   const NavbarTabView({Key? key}) : super(key: key);

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Damtrack',
// //       theme: ThemeData(
// //         // scaffoldBackgroundColor: Color.fromARGB(255, 255, 220, 65),
// //         primarySwatch: Colors.amber,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       home: LoginPage(),
// //     );
// //   }
// // }
// // class BottomNavbar extends StatelessWidget {  
// //   const BottomNavbar({
// //     Key? key,
// //   }) : super(key: key);
// //   @override  
// //   Widget build(BuildContext context) {  
// //     return  Scaffold(
// //         // title: 'Damtrack',
// //         // theme: ThemeData(
// //         //   // scaffoldBackgroundColor: Color.fromARGB(255, 255, 220, 65),
// //         //   primarySwatch: Colors.amber,
// //         //   visualDensity: VisualDensity.adaptivePlatformDensity,
// //         // ),
// //         body: DefaultTabController(
// //           length: 4,
// //           child: Scaffold(
// //             appBar: AppBar(
// //               backgroundColor: Colors.amber,
// //               title: Text("Damtrack"),
// //               elevation: 0,
// //             ),
// //             bottomNavigationBar: menu(),
// //             body: TabBarView(
// //               physics: NeverScrollableScrollPhysics(),
// //               children: [
// //                 HomeScreen(),
// //                 Container(child: Icon(Icons.directions_bike)),
// //                 HalteInformation(),
// //                 Profile(),
// //               ],
// //             ),
// //           ),
// //         ),
// //       );
// //     }

// //      Widget menu() {
// //       return Container(
// //         color: Colors.amber,
// //         child: TabBar(
// //           labelColor: Colors.white,
// //           unselectedLabelColor: Colors.white70,
// //           indicatorSize: TabBarIndicatorSize.tab,
// //           indicatorPadding: EdgeInsets.all(5.0),
// //           indicatorColor: Colors.white,
// //           tabs: [
// //             Tab(
// //               text: "Home",
// //               icon: Icon(Icons.home),
// //             ),
// //             Tab(
// //               text: "Schedule",
// //               icon: Icon(Icons.schedule),
// //             ),
// //             Tab(
// //               text: "Halte",
// //               icon: Icon(Icons.directions_bus),
// //             ),
// //             Tab(
// //               text: "Profile",
// //               icon: Icon(Icons.people_alt_sharp),
// //             ),
// //           ],
// //         ),
// //       );  
// //   }  
// // }  