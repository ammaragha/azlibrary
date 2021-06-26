import 'package:flutter/material.dart';

enum ColorType { primary, secondary }

class InkBtn extends StatelessWidget {
  final String title;
  final String route;
  final ColorType color;

  InkBtn({required this.title, required this.color, required this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color == ColorType.primary
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondary,
        ),
        child: Text(
          this.title,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
