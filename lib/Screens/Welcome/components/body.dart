import 'package:flutter/material.dart';
import 'package:picki/Screens/Login/login_screen.dart';
import 'package:picki/Screens/SignUp/components/rounded_button.dart';
import 'package:picki/Screens/Welcome/components/background.dart';
import 'package:picki/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to PickGas App',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              'assets/icons/cooking.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
                text: 'LOGIN',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            RoundedButton(
              text: 'REGISTER',
              color:kPrimaryColor,
              textColor: Colors.black,
              press: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) {
                        return SignUpScreen();
               },
                ),
                 );
                 }
                  ),
                   ],
            ),
            ),
            );
}
}