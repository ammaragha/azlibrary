import '../routes/myRoutes.dart';
import '../widgets/tilBtn.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: double.infinity,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ListTile(
              title: Text(
                "Ammar Agha",
                style: Theme.of(context).textTheme.headline4,
                overflow: TextOverflow.clip,
              ),
              subtitle: Text(
                'Ammaraghaagha@gmail.com',
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                TileBtn(title: "Home", icon: Icons.home, routeName: home),
                TileBtn(
                    title: "Profile",
                    icon: Icons.person_pin,
                    routeName: profile),
                TileBtn(title: "Phd Thesis", icon: Icons.book, routeName: phd),
                TileBtn(title: "About us", icon: Icons.info, routeName: about),
                Divider(
                  color: Colors.white,
                  height: 20,
                ),
                TileBtn(
                    title: "Logout",
                    icon: Icons.arrow_back_rounded,
                    routeName: welcome),
                // TileBtn(title: "Welcome", icon: Icons.home, routeName: welcome),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
