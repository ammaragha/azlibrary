import 'package:azlibrary/dummy/booksDum.dart';
import 'package:azlibrary/dummy/libsDum.dart';
import 'package:azlibrary/myApp/app.dart';
import 'package:azlibrary/myApp/listBooks.dart';
import 'package:azlibrary/myApp/mainTilte.dart';
import 'package:azlibrary/myApp/searchSection.dart';
import 'package:azlibrary/widgets/sideTitle.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  static const route = "result";

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
        //---------------------------------------------
        SideTitle(title: "Results :"),
        //---------------------------------------------
        //Start List of Books Section
        Padding(
          padding: EdgeInsets.all(20),
          child: ListBooks(
            books: books,
          ),
        ),
      ],
    );
  }
}
