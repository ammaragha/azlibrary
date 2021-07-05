//import 'package:azlibrary/myApp/mydrop.dart';

import 'package:azlibrary/myApp/expoList.dart';

import '../myApp/shortNoteCard.dart';
import '../myApp/searchSection.dart';
import '../myApp/mainTilte.dart';
import '../myApp/app.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  static List<String> dropitems = [
    "All libraries",
    "faculty of Engineering",
    "faculty of medicen",
    "faculty of math",
    "faculty of scince",
    "faculty of pharmacy",
    "faculty of physices",
  ];
  String _selectedLib = dropitems[0];
  @override
  Widget build(BuildContext context) {
    return App(
      content: [
        MainTitle(tilte: "The digital library of Al-Azhar University"),
        SizedBox(
          height: 50,
        ),
        //-----------------------------
        //search section
        SearchSection(
            dropitems: dropitems,
            selectedLib:
                _selectedLib), //will send all libs here and return APi from main Class
        //----------------------------------------------
        Divider(),
        // SizedBox(
        //   height: 30,
        // ),
        //---------------------------------------------

        //short note card
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ShortNoteCard(
            id: 1,
          ),
        ),
        //---------------------------------------------

        // Start Blind search Section
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.topLeft,
          child: Text(
            "Blind Search: ",
            style: TextStyle(fontSize: 22, color: Colors.grey),
          ),
        ),
        //-----------------------------
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: ExpoList(),
        ),
      ],
    );
  }
}
