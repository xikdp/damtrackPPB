import 'package:flutter/material.dart';
import 'schedule_card.dart';
import 'schedule_content.dart';

class ScheduleBody extends StatelessWidget {
  const ScheduleBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScheduleContent(),
    );
  }
}