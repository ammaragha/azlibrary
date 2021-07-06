import 'package:azlibrary/myApp/app.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  static String route = "about";
  @override
  Widget build(BuildContext context) {
    return App(content: [
      Center(
        child: Text('About Us'),
      )
    ]);
  }
}
