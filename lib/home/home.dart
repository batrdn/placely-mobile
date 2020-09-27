import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animations/fade_animation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                //Center Column contents horizontally,
                children: <Widget>[
                  FadeAnimation(
                      1.8,
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 5, right: 5, bottom: 2.5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.smartphone,
                              color: Color.fromRGBO(15, 163, 177, 1),
                              size: 25.0,
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.all(8.0),
                                margin: EdgeInsets.only(top: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Утасны дугаар",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  FadeAnimation(
                      1.8,
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(
                            left: 10, top: 5, right: 5, bottom: 2.5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.lock,
                              color: Color.fromRGBO(15, 163, 177, 1),
                              size: 25.0,
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.all(8.0),
                                margin: EdgeInsets.only(top: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Нууц үг",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: FadeAnimation(
                      2,
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(15, 163, 177, 1),
                                  Color.fromRGBO(15, 163, 177, .6),
                                ])),
                            child: Center(
                              child: Text(
                                "Нэвтрэх",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 50,
                            width: 45,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Center(
                              child: Icon(
                                Icons.fingerprint,
                                color: Color.fromRGBO(15, 163, 177, 1),
                                size: 40,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Center(
                  child: FadeAnimation(
                      2,
                      Container(
                        height: 50,
                        width: 350,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Бүртгүүлэх",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
