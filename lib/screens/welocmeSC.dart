import '../routes/myRoutes.dart';
import '../widgets/inkBtn.dart';
import 'package:flutter/material.dart';

class WelcomeSC extends StatelessWidget {
  static final route = 'welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Background Image
        //color: Colors.black,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(190, 146, 140, 148),
              Color.fromARGB(50, 146, 140, 148),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/welcome.png'),
            fit: BoxFit.cover,
          ),
        ),
        //---------------------------------------------------------
        //Column
        child: Column(
          children: [
            //Logo
            Container(
              width: double.infinity,
              height: 180,
              alignment: Alignment.topLeft,
              child: Image.asset("assets/images/logo.png"),
            ),
            //--------------------------------------------------
            //Sizedbox
            SizedBox(
              height: 50,
            ),
            //welcome massege
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "welcome to the digital library of Al-Azhar University",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  shadows: [
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(125, 0, 0, 255),
                    ),
                  ],
                ),
              ),
            ),
            //----------------------------------------------
            SizedBox(
              height: 80,
            ),
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
            InkBtn(
              title: "Search",
              color: ColorType.primary,
              route: welcome,
            ),
            //-----------------------------------------------------
            SizedBox(
              height: 20,
            ),

            //Auth links
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkBtn(title: "Login", color: ColorType.secondary, route: home),
                SizedBox(
                  width: 50,
                ),
                InkBtn(
                    title: "Sign up",
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
