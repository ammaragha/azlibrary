import 'package:flutter/material.dart';

class Mydrop extends StatefulWidget {
  @override
  _MydropState createState() => _MydropState();
  bool _dd = false;
  IconData _icon = Icons.add;
}

class _MydropState extends State<Mydrop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      alignment: Alignment.center,
      width: double.infinity,
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Theme.of(context).colorScheme.primary,
              shadowColor: Colors.grey,
            ),
            onPressed: () {
              print(this.widget._dd);
              if (!this.widget._dd) {
                setState(() {
                  this.widget._dd = true;
                  this.widget._icon = Icons.minimize;
                });
              } else {
                setState(() {
                  this.widget._dd = false;
                  this.widget._icon = Icons.add;
                });
              }
            },
            child: ListTile(
              title: Text(
                "hey",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                this.widget._icon,
                color: Colors.white,
              ),
            ),
          ),
          Visibility(
            visible: this.widget._dd,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 2,
                    childAspectRatio: 10,
                  ),
                  children: List.generate(
                    10,
                    (index) => ListTile(
                      onTap: () {},
                      title: Text(
                        "hey num $index",
                        style: TextStyle(backgroundColor: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
