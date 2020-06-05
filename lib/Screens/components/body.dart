import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:picki/Screens/Login/login_screen.dart';
import 'package:picki/Screens/components/background.dart';
import 'package:picki/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to PickGas App",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.3),
            SvgPicture.asset(
              "assets/icons/cooking.svg",
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.3),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            RoundedButton(
              text: "REGISTER",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
