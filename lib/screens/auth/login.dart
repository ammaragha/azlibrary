import 'package:azlibrary/routes/myRoutes.dart';
import 'package:azlibrary/screens/auth/authApp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String route = "Login";
  bool _visable = true;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      "Login",
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
                    Text("Have no Account ? "),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(sign);
                        },
                        child: Text("Sign up"))
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
