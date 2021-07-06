import 'package:azlibrary/myApp/app.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static String route = "profile";
  @override
  Widget build(BuildContext context) {
    return App(content: [
      Center(
        child: Text("this is profile"),
      )
    ]);
  }
}
