import 'package:flutter/material.dart';

class SpanTxt extends StatelessWidget {
  final String span;
  final String content;
  SpanTxt({required this.span, required this.content});
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        children: [
          TextSpan(
            text: this.span,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: " : ",
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: this.content,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
