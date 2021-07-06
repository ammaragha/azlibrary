//import 'package:azlibrary/myApp/mydrop.dart';

import 'package:azlibrary/dummy/libsDum.dart';
import 'package:azlibrary/dummy/subjDum.dart';
import 'package:azlibrary/widgets/sideTitle.dart';

import '../models/ui/subjUI.dart';
import '../myApp/expoList.dart';
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
  //String _selectedLib = dropitems[0].name;
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
          dropitems: libs,
        ), //will send all libs here and return APi from main Class
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
        SideTitle(title: "Blind Search : "),
        //-----------------------------
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
          child: ExpoList(
            subjects: subjs,
          ),
        ),
      ],
    );
  }
}
