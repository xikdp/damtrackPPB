import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key? key, required this.icon, required this.namaDamri, required this.platDamri, required this.jalurDamri, required this.jamOperasional, //this.press,
  }) : super(key: key);
  
  final String icon, namaDamri, platDamri, jalurDamri, jamOperasional;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: 20/2,
      ),
      child: Column(
        children: <Widget>[
              Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Container(
                      height: 115,
                      child: Row(
                        children: [
                          Center(
                            child:Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                    Padding(padding: EdgeInsets.only(
                                      top: 15,
                                    )),
                                    Image.asset(icon, width: 45, height: 45,),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child:Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 12.0),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "$namaDamri",
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children:  [
                                          TextSpan(
                                            text: "$platDamri",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "$jalurDamri",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "$jamOperasional",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                    margin: EdgeInsets.all(10),
                  ),
        ],
      ), 
    );
  }
}