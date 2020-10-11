import 'package:flutter/material.dart';
import 'package:placely_mobile/animations/fade_animation.dart';
import 'package:placely_mobile/pages/home/components/fingerprint_button.dart';
import 'package:placely_mobile/pages/home/components/login_button.dart';
import 'package:placely_mobile/pages/home/components/password_field.dart';
import 'package:placely_mobile/pages/home/components/phone_field.dart';
import 'package:placely_mobile/pages/home/components/register_button.dart';
import 'package:placely_mobile/pages/registration/registration.dart';

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeAnimation(1.8, PhoneField()),
                  FadeAnimation(1.8, PasswordField())
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
                        children: [LoginButton(), FingerPrintButton()],
                      )),
                ),
                Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                      },
                      child: FadeAnimation(2, RegisterButton())),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
