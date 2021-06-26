import 'package:azlibrary/widgets/inkBtn.dart';
import 'package:flutter/material.dart';

class WelcomeSC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Background Image
        color: Colors.black,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/bg.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        //---------------------------------------------------------
        //container
        child: Column(
          children: [
            //Logo
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset("assets/images/logo.png"),
            ),
            //--------------------------------------------------
            //SearchBar
            Container(
              alignment: Alignment.center,
              width: 700,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
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
            //----------------------------------------------------

            SizedBox(
              height: 50,
            ),

            // search Button
            Container(
              child: InkBtn(
                title: "Search",
                color: ColorType.primary,
                route: "/",
              ),
            ),
            //-----------------------------------------------------
            SizedBox(
              height: 50,
            ),

            //Auth links
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkBtn(
                    title: "login", color: ColorType.secondary, route: "route"),
                SizedBox(
                  width: 50,
                ),
                InkBtn(
                    title: "sign up",
                    color: ColorType.secondary,
                    route: "route"),
              ],
            ),
            //----------------------------------------------------
          ],
        ),
      ),
    );
  }
}
