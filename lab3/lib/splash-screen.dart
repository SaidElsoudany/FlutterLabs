import 'dart:async';

import 'package:flutter/material.dart';

import 'login-screen.dart';

class splashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Splash();
  }
}

class Splash extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => loginScreen())
            )
    );
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.black87.withOpacity(0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.jpg"),
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "MARKET",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                Spacer(
                  flex: 40,
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/yellow.png"),
                ),
                Text(
                  "Flutter Ecommerce \n UI Template",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                Spacer(
                  flex: 10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
