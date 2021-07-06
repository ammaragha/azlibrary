import 'package:azlibrary/dummy/collgDum.dart';
import 'package:azlibrary/models/ui/collageUI.dart';
import 'package:azlibrary/routes/myRoutes.dart';
import 'package:azlibrary/screens/auth/authApp.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  static String route = "sign";
  List<CollageUI> collgs = collgDum;
  bool _visable = true;

  var selectedLib = null;
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return AuthApp(
      content: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(13), boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 10)
        ]),
        width: 500,
        child: Card(
          color: Colors.white.withOpacity(.9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(10, 5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter Your Name ..",
                    icon: Icon(Icons.person),
                    border: InputBorder.none,
                    fillColor: Colors.red,
                  ),
                ),
                Divider(),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter Your Email ..",
                    icon: Icon(Icons.mail),
                    border: InputBorder.none,
                  ),
                ),
                Divider(),
                TextField(
                  obscureText: widget._visable,
                  decoration: InputDecoration(
                    hintText: "enter Your Password ..",
                    icon: Icon(Icons.vpn_key),
                    border: InputBorder.none,
                    suffix: TextButton(
                      onPressed: () {
                        setState(() {
                          widget._visable = !widget._visable;
                        });
                      },
                      child: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                Divider(),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter Your ID number ..",
                    icon: Icon(Icons.card_membership),
                    border: InputBorder.none,
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: DropdownButton<String>(
                    hint: Text("Choose your college"),
                    value: this.widget.selectedLib, //current value
                    isExpanded: true,
                    items: this.widget.collgs.map((e) {
                      return DropdownMenuItem<String>(
                        value: e.id.toString(),
                        child: Text(
                          e.name,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        this.widget.selectedLib = newValue.toString();
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(home);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Text("Login"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have  Account ? "),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Back"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
