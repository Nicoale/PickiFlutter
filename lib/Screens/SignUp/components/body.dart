import 'package:flutter/material.dart';
import 'package:picki/Screens/Login/components/already_have_an_account.dart';
import 'package:picki/Screens/Login/components/rounded_Input.dart';
import 'package:picki/Screens/Login/components/rounded_password.dart';
import 'package:picki/Screens/Login/login_screen.dart';
import 'package:picki/Screens/SignUp/components/background.dart';
import 'package:picki/Screens/SignUp/components/rounded_button.dart';
import 'package:picki/Screens/Welcome/components/or_divider.dart';
import 'package:picki/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          Text(
            'REGISTER',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/cooking.svg',
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: 'Your  Email',
            onChanged: (String value) {},
          ),
          RoundedPasswordField(
            onChanged: (String value) {},
          ),
          RoundedButton(
            text: 'REGISTER',
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAccountWidget(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute<dynamic>(
                builder: (BuildContext context) {
                  return LoginScreen();
                },
              ));
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: kPrimaryColor,
                  ),
                  shape: BoxShape.circle,
                ),
                ),
                ],
          ),
        ],
      ),
    );
  }
}

