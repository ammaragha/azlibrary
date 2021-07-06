import 'package:azlibrary/screens/Phd.dart';
import 'package:azlibrary/screens/about.dart';
import 'package:azlibrary/screens/auth/login.dart';
import 'package:azlibrary/screens/auth/signup.dart';
import 'package:azlibrary/screens/profile.dart';
import 'package:azlibrary/screens/viewbook.dart';

import '../screens/result.dart';
import '../screens/home.dart';
import '../screens/welocmeSC.dart';
import 'package:flutter/widgets.dart';

String welcome = "/";
String home = "home";
String profile = Profile.route;
String phd = Phd.route;
String about = About.route;
String result = Result.route;
String viewBook = ViewBook.route;

//-----------------------
String login = Login.route;
String sign = Signup.route;
//-----------------------

Map<String, Widget Function(BuildContext)> myRoutes = {
  welcome: (context) => WelcomeSC(),
  home: (context) => MyHome(),
  result: (context) => Result(),
  viewBook: (context) => ViewBook(),
  profile: (context) => Profile(),
  phd: (context) => Result(),
  about: (context) => About(),
  //--------------------------------
  login: (context) => Login(),
  sign: (context) => Signup(),
};
