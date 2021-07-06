import 'package:flutter/material.dart';

class ShortNoteCard extends StatelessWidget {
  final int id;
  ShortNoteCard({required this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.primary.withOpacity(.5)
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Hey Ammar $id How are u Today..",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "you Borrowed : 3 Books",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Books at Pendding : 3 Books",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Books have to send back : 3 Books",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(""),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
