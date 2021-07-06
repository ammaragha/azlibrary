import './sideBar.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final List<Widget> content;
  App({required this.content});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SideBar(),
          ),
          Expanded(
            flex: 5,
            child: ListView(
              children: [
                Container(
                  color: Colors.white,
                  child: Container(
                    color: Color.fromRGBO(238, 235, 221, .3),
                    child: Column(
                      children: this.content,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
