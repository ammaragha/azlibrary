import 'package:flutter/material.dart';

class AuthApp extends StatefulWidget {
  final Widget content;
  AuthApp({required this.content});

  @override
  _AuthAppState createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(.4),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white.withOpacity(.9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Image.asset("assets/images/auth.png"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  this.widget.content,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
