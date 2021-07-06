import 'package:azlibrary/myApp/app.dart';
import 'package:flutter/material.dart';

class Phd extends StatelessWidget {
  static String route = 'phd';
  @override
  Widget build(BuildContext context) {
    return App(content: [
      Center(
        child: Text("Phd thesis"),
      )
    ]);
  }
}
