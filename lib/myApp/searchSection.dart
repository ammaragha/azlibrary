import '../models/ui/libUI.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatefulWidget {
  final List<LibUI> dropitems;
  var selectedLib = null;
  static var id;

  SearchSection({
    required this.dropitems,
  });

  @override
  _SearchSectionState createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    List<LibUI> libs = this.widget.dropitems;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Library of :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: DropdownButton<String>(
                      hint: Text("All Libraries"),
                      value: this.widget.selectedLib, //current value
                      isExpanded: true,
                      items: libs.map((e) {
                        return DropdownMenuItem<String>(
                          value: e.id.toString(),
                          child: Text(
                            e.name,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          this.widget.selectedLib = newValue.toString();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  onSubmitted: (value) => print(this.widget.selectedLib),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    hoverColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search for your Book",
                    hintStyle: TextStyle(color: Colors.grey),
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
