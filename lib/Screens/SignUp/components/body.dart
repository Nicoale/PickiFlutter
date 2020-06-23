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
           child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.06),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'REGISTER',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.04,
                      color: kPrimaryColor),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          SvgPicture.asset(
            'assets/icons/cooking.svg',
            height: size.height * 0.10,
          ),
          SizedBox(height: size.height * 0.01),
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
          // AlreadyHaveAccountWidget(
          //   login: false,
          //   press: () {
          //     Navigator.push(context, MaterialPageRoute<dynamic>(
          //       builder: (BuildContext context) {
          //         return LoginScreen();
          //       },
          //     ));
          //   },
          // ),
                    GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<dynamic>(builder: (BuildContext context) {
                return LoginScreen();
              }));
            },
            child: AlreadyHaveAccountWidget(),
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
    ),
    );
  }
}

