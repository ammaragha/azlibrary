import '../screens/home.dart';
import '../screens/welocmeSC.dart';
import 'package:flutter/widgets.dart';

String welcome = "/";
String home = "home";

Map<String, Widget Function(BuildContext)> myRoutes = {
  welcome: (context) => WelcomeSC(),
  home: (context) => MyHome(),
};
