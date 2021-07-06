import 'package:flutter/material.dart';

class SideTitle extends StatelessWidget {
  final String title;
  SideTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.topLeft,
      child: Text(
        this.title,
        style: TextStyle(fontSize: 22, color: Colors.grey),
      ),
    );
  }
}
