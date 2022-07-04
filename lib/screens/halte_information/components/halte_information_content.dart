import 'package:flutter/material.dart';
import 'halte_information_card.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class halte_information_content extends StatelessWidget {
  const halte_information_content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('halte').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if(!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Center(
                child: halte_information_card(
                  icon: "assets/icons/getonbus.png", 
                  title: "Halte ${document['namahalte']}", 
                  subtitle1: "Titik Halte : ${document['titikhalte']}", 
                  subtitle2: "${document['alamatlengkap']}", 
                ),
              );
            }).toList(),
          );
        }
        ),
    );
  }
}