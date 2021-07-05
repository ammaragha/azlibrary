import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String tilte;
  MainTitle({required this.tilte});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 3,
            offset: Offset(-2, -2),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
        color: Theme.of(context).colorScheme.primary,
      ),
      alignment: Alignment.center,
      width: 700,
      padding: EdgeInsets.all(20),
      child: ListTile(
        title: Text(
          this.tilte,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "Raleway",
          ),
        ),
        trailing: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
