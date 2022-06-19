// import 'dart:html';
import 'package:flutter/material.dart';
import 'schedule_card.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ScheduleContent extends StatelessWidget{
  const ScheduleContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('schedule').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if(!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Center(
                child: ScheduleCard(
                  icon: "assets/icons/damri.png", 
                  namaDamri: "Bus ${document['namadamri']}", 
                  platDamri: "Plat : ${document['platdamri']}", 
                  jalurDamri: "Jalur : ${document['jalurdamri']}", 
                  jamOperasional: "Jam Operasional : ${document['jamoperasional']}"
                ),
              );
            }).toList(),
          );
        }
        ),
    );
  }
 }
