import 'package:azlibrary/screens/welocmeSC.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ThemeData.light().colorScheme.copyWith(
              secondary: Color.fromARGB(255, 209, 114, 19),
              primary: Color.fromARGB(255, 135, 14, 195),
            ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(150, 250, 100, .4)),
              bodyText2: TextStyle(color: Color.fromRGBO(100, 250, 150, .1)),
              headline1: TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'),
              button: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
      ),
      home: WelcomeSC(),
    );
  }
}
