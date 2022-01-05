import 'package:flutter/material.dart';
import 'package:logo/loginpage.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Logo()));

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 150),
              height: 300,
              width: 400,
              child: Image.asset("assets/images/logoTest.png"),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "APPLICATION",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "THE NO.1 APP",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 70),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SwitchExample()));
              },
              color: Colors.greenAccent[700],
              textColor: Colors.white,
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 24,
              ),
              padding: EdgeInsets.all(16),
              shape: CircleBorder(),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
