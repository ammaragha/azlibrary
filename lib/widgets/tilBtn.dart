import 'package:flutter/material.dart';

class TileBtn extends StatelessWidget {
  final String title;
  final IconData icon;
  final routeName;

  const TileBtn(
      {required this.title, required this.icon, required this.routeName});
  @override
  Widget build(BuildContext context) {
    var curr = ModalRoute.of(context)!.settings.name;
    var fun = null;
    // if (curr != this.routeName) {
    //   fun = Navigator.of(context).pushReplacementNamed(this.routeName);
    // }
    return ListTile(
      tileColor: curr == this.routeName
          ? Theme.of(context).colorScheme.secondary
          : Theme.of(context).scaffoldBackgroundColor,
      onTap: curr != this.routeName
          ? () {
              Navigator.of(context).pushReplacementNamed(this.routeName);
            }
          : null,
      title: Text(
        this.title,
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        this.icon,
        color: Colors.white,
      ),
    );
  }
}
