import 'package:flutter/material.dart';

class ExpoList extends StatefulWidget {
  final String title;
  final Map l;
  List<bool> _isOpen = List.generate(100, (index) => false);

  @override
  _ExpoListState createState() => _ExpoListState();
}

class _ExpoListState extends State<ExpoList> {
  @override
  Widget build(BuildContext context) {
    List<bool> _isOpen = this.widget._isOpen;

    return ExpansionPanelList(
      expansionCallback: (i, isOpen) {
        setState(() {
          _isOpen[i] = !isOpen;
        });
      },
      dividerColor: Theme.of(context).colorScheme.secondary,
      children: [
        ExpansionPanel(
          canTapOnHeader: true,
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(.5),
          isExpanded: _isOpen[0],
          headerBuilder: (context, isOpen) {
            return Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'hey',
                style: Theme.of(context).textTheme.headline6,
              ),
            );
          },
          body: Container(
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
      ],
    );
  }
}
