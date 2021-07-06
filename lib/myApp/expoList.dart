import '../routes/myRoutes.dart';
import '../models/ui/subjUI.dart';
import 'package:flutter/material.dart';

class ExpoList extends StatefulWidget {
  final List<SubjUI> subjects;

  ExpoList({required this.subjects});

  @override
  _ExpoListState createState() => _ExpoListState();
}

class _ExpoListState extends State<ExpoList> {
  @override
  Widget build(BuildContext context) {
    List<SubjUI> subjs = this.widget.subjects;

    toSubSubj(context, routeName) {
      return Navigator.of(context).pushReplacementNamed(routeName);
    }

    return ExpansionPanelList(
      expansionCallback: (i, isOpen) {
        setState(() {
          subjs[i].isOpen = !subjs[i].isOpen;
        });
      },
      dividerColor: Theme.of(context).colorScheme.secondary,
      children: subjs
          .map(
            (e) => ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor:
                  Theme.of(context).colorScheme.primary.withOpacity(.5),
              isExpanded: e.isOpen,
              headerBuilder: (context, isOpen) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    e.name,
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
                      onTap: () {
                        toSubSubj(context, result);
                      },
                      title: Text(
                        "hey num $index",
                        style: TextStyle(backgroundColor: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
