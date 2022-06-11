import 'package:damtrack/components/bottom_navbar.dart';
import 'package:damtrack/screens/detail_information/components/body.dart';
import 'package:damtrack/screens/schedule/component/schedule_body.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScheduleBody(),
    );
  }
}