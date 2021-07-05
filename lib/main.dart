import '../routes/myRoutes.dart';
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
        fontFamily: 'RobotoCondensed',
        scaffoldBackgroundColor: Color.fromARGB(20, 232, 246, 239),
        hoverColor: Color.fromARGB(200, 76, 76, 109),
        colorScheme: ThemeData.light().colorScheme.copyWith(
              secondary: Color.fromRGBO(255, 225, 148, .3),
              primary: Color.fromRGBO(76, 76, 109, 1),
            ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline4: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoCondensed',
                fontSize: 22,
              ),
              headline5: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoCondensed',
                fontSize: 18,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontFamily: 'Raleway',
                fontSize: 16,
              ),
              button: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
      ),
      //home: WelcomeSC(),
      routes: myRoutes,
    );
  }
}
