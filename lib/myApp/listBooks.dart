import 'package:azlibrary/models/ui/bookUI.dart';
import 'package:azlibrary/widgets/spanTxt.dart';

import '../routes/myRoutes.dart';
import 'package:flutter/material.dart';

class ListBooks extends StatelessWidget {
  final List<BookUI> books;
  ListBooks({required this.books});
  @override
  Widget build(BuildContext context) {
    //=====================================================
    //=====================================================
    //=====================================================
    toBookView(context, routeName, id) {
      return Navigator.of(context).pushNamed(routeName, arguments: id);
    }
    //=====================================================
    //=====================================================
    //=====================================================

    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: this.books.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 250,
          childAspectRatio: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 4,
            child: Container(
              child: Row(
                children: [
                  //start Image
                  Container(
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/images/book.jpg"),
                  ),
                  //----------------------------------------------------
                  //Start Book Content
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          //start Book title
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              this.books[index].name,
                              style: Theme.of(context).textTheme.headline3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          //---------------------------------------------------------
                          //Start discoreption
                          Container(
                            width: double.infinity,
                            height: 120,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              //this.books[index].description,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis metus non ipsum egestas convallis. Phasellus tempor tellus vehicula sapien tempor lacinia. Proin pellentesque non libero vitae vehicula. Nam nec tempor leo, non laoreet nisi. In pretium fringilla imperdiet. Aenean tempus erat risus, vel egestas nisi pretium vitae. Fusce vel odio nec arcu accumsan finibus in nec justo. Sed eget lacinia augue. Pellentesque at magna tortor. Praesent in nisl neque. Vestibulum tellus nulla, rhoncus quis purus et, placerat varius dui. Duis sit amet dapibus ante, mollis congue sapien. Nunc at rutrum arcu. Fusce a tempor libero. Suspendisse potenti. Vivamus non dapibus nulla, quis gravida quam.",
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          //------------------------------------------------------------
                          Row(
                            children: [
                              // Avilabilty
                              Expanded(
                                flex: 10,
                                child: SpanTxt(
                                  span: "Avilable",
                                  content:
                                      this.books[index].avilable.toString(),
                                ),
                              ),
                              //------------------------------------
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: ListTile(
                                    //=====================================================
                                    //=====================================================
                                    //=====================================================
                                    //=====================================================
                                    //=====================================================

                                    onTap: () => toBookView(context, viewBook,
                                        this.books[index].id),

                                    //=====================================================
                                    //=====================================================
                                    //=====================================================
                                    //=====================================================

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    tileColor:
                                        Theme.of(context).colorScheme.primary,
                                    title: Text(
                                      "show more",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          //--------------------------------------------------------------
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
