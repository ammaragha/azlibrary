import 'package:azlibrary/dummy/booksDum.dart';
import 'package:azlibrary/models/ui/bookUI.dart';
import 'package:azlibrary/myApp/app.dart';
import 'package:azlibrary/myApp/mainTilte.dart';
import 'package:azlibrary/widgets/sideTitle.dart';
import 'package:azlibrary/widgets/spanTxt.dart';
import 'package:flutter/material.dart';

class ViewBook extends StatefulWidget {
  static String route = "viewBook";
  @override
  _ViewBookState createState() => _ViewBookState();
}

class _ViewBookState extends State<ViewBook> {
  @override
  Widget build(BuildContext context) {
    final int id = ModalRoute.of(context)!.settings.arguments as int;
    BookUI book = books.firstWhere((element) => element.id == id);
    return App(
      content: [
        MainTitle(tilte: "The digital library of Al-Azhar University"),
        SizedBox(
          height: 80,
        ),
        SideTitle(title: book.name),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                child: Image.asset("assets/images/book.jpg"),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Description
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SpanTxt(
                            span: "Description",
                            content:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis metus non ipsum egestas convallis. Phasellus tempor tellus vehicula sapien tempor lacinia. Proin pellentesque non libero vitae vehicula. Nam nec tempor leo, non laoreet nisi. In pretium fringilla imperdiet. Aenean tempus erat risus, vel egestas nisi pretium vitae. Fusce vel odio nec arcu accumsan finibus in nec justo. Sed eget lacinia augue. Pellentesque at magna tortor. Praesent in nisl neque. Vestibulum tellus nulla, rhoncus quis purus et, placerat varius dui. Duis sit amet dapibus ante, mollis congue sapien. Nunc at rutrum arcu. Fusce a tempor libero. Suspendisse potenti. Vivamus non dapibus nulla, quis gravida quam."),
                      ),
                      //auther
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Auther",
                          content: book.auther,
                        ),
                      ),
                      //belongs to
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Library of ",
                          content: "Faculty of engineering",
                        ),
                      ),
                      //place of book
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Block",
                          content: book.block,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Row",
                          content: book.row,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Column",
                          content: book.column,
                        ),
                      ),
                      //Avilabilty
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Avilable",
                          content: book.avilable.toString(),
                        ),
                      ),
                      //pendding
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Borrowed",
                          content: book.borrowed,
                        ),
                      ),
                      //first book will be avilable
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SpanTxt(
                          span: "Closest Borrwod book will be avilable at ",
                          content: book.closest,
                        ),
                      ),
                      //--------------------------------------------------
                      //Borrow Button -------------------------------
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            final AlertDialog alert = AlertDialog(
                              title: Text(
                                "Are you Sure ?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              content: Container(
                                height: 150,
                                child: Column(
                                  children: [
                                    Text(
                                        'You have to get back book after 4 Days.'),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    //yes sure
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue),
                                      onPressed: () {
                                        final AlertDialog alert = AlertDialog(
                                          title: Icon(
                                            Icons.done_all,
                                            color: Colors.green,
                                          ),
                                          content: Text("Nice wait response"),
                                        );
                                        print(book.id);
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) => alert);
                                      },
                                      child: ListTile(
                                        title: Text(
                                          'yes sure ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        trailing: Icon(
                                          Icons.done,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    //Cancel
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.red),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: ListTile(
                                        title: Text(
                                          'Cancel',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        trailing: Icon(
                                          Icons.cancel,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                            showDialog(
                              context: context,
                              builder: (context) => alert,
                            );
                          },
                          child: ListTile(
                            title: Text(
                              'Borrow Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.update,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      //Back ---------------------
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: ListTile(
                            title: Text(
                              'Back',
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
