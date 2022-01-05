import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:logo/product_list.dart';

void main() => runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: SwitchExample()));

class SwitchExample extends StatefulWidget {
  @override
  SwitchExampleState createState() => new SwitchExampleState();
}

class SwitchExampleState extends State {
  bool switchOn = false;

  void _onSwitchChanged(bool value) {
    if (switchOn == false) {
      setState(() {
        switchOn = true;
      });
    } else {
      setState(() {
        switchOn = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 7),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 270, top: 7),
                child: Text("Need Some help?",
                    style: GoogleFonts.lato(fontSize: 16, color: Colors.white)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Stack(
              children: [
                Container(
                  height: 549,
                  // width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, top: 15),
                  child: Text(
                    "Getting Started",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, top: 40),
                  child: Text(
                    "Create an account to continue!",
                    style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, top: 70),
                  child: Text(
                    "Sign Up With",
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 100),
                      child: ClipOval(
                        child: Image.network(
                          "data:image/png;base64,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",
                          fit: BoxFit.cover,
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 100),
                      child: ClipOval(
                        child: Image.network(
                          "data:image/png;base64,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",
                          fit: BoxFit.cover,
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 100),
                      child: ClipOval(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdrmQcvwv-x2BkE_obUWzWSNRNcpEiFymChQ&usqp=CAU",
                          fit: BoxFit.cover,
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 140, left: 230),
                  child: Text(
                    "or",
                    style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 21),
                  ),
                ),
                Container(
                  width: 450,
                  padding: EdgeInsets.only(left: 45, top: 200),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "",
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  width: 450,
                  padding: EdgeInsets.only(left: 45, top: 260),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 450,
                  padding: EdgeInsets.only(left: 45, top: 330),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),

                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.grey,
                    ),
                    autofocus: false,
                    obscureText: true,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 50, top: 390),
                      child: Text(
                        "Remember Me?",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 380, top: 380),
                  child: Transform.scale(
                    scale: 2.0,
                    child: Switch(
                      onChanged: _onSwitchChanged,
                      value: switchOn,
                      activeColor: Colors.white,
                      activeTrackColor: Colors.green,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
                Container(
                  width: 400,


                  padding: EdgeInsets.only(top: 427, left: 65),
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      // side: BorderSide(color: Colors.green, width: 2),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>  Product()));
                    },
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.lato(fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 480, left: 110),
                      child: Text("Already have an account ?",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w800),),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 480, left: 5),
                      child: Text("Sign in",style: GoogleFonts.lato(color: Colors.green,fontWeight: FontWeight.w800),
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

//UI/UXDesigner@vikincodes.com

//Savadfarooque
//hello@123