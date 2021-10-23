import 'package:flutter/material.dart';
import 'package:here/home.dart';

class Login extends StatelessWidget {
  final Color appbarColor = Color.fromRGBO(127, 27, 27, 1.0);
  final height = AppBar().preferredSize.height;

  final Color gradientTopColor = Color.fromRGBO(127, 27, 27, 1.0);
  final Color gradientBottomColor = Color.fromRGBO(21, 4, 4, 1.0);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: SafeArea(
        top: true,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          primary: true,
          appBar: AppBar(
            backgroundColor: appbarColor,
            elevation: 0,
            toolbarHeight: height + 2,
            shadowColor: Colors.black,
          ),
          body: Container(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight / 6,
                        width: screenWidth / 1.3,
                        child: Text(
                          "Welcome to the \nHymns and Chords App",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth / 15,
                          ),
                        ),
                        // color: Colors.pink,
                      ),
                      Container(
                        height: screenHeight / 5,
                        // color: Colors.yellow,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(
                            left: screenWidth / 10, right: screenWidth / 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            TextFormField(
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white70))),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight / 5,
                        // color: Colors.yellow,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(
                            left: screenWidth / 10, right: screenWidth / 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            TextFormField(
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white70))),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight / 10,
                        alignment: Alignment.center,
                        child: MaterialButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Text('Sign In'),
                        ),
                      )
                    ],
                  ),
                  // color: Colors.green,
                ),
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment
                    .bottomCenter, // 10% of the width, so there are ten blinds.
                colors: [
                  gradientTopColor,
                  gradientBottomColor,
                ], // whitish to gray
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
        ),
      ),
    );
  }
}
