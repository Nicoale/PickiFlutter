import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:picki/Screens/Login/components/background.dart';
import 'package:picki/Screens/Login/components/rounded_Input.dart';
import 'package:picki/Screens/Login/components/rounded_password.dart';
import 'package:picki/components/rounded_button.dart';
import 'package:picki/constant.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/cooking.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your  Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          AlreadyHaveAccountWidget()
        ],
      ),
    );
  }
}

class AlreadyHaveAccountWidget extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccountWidget({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        login ? "Dont have an Account?":"Already have an Account?",
        style: TextStyle(color: kPrimaryColor),
      ),
      GestureDetector(
        onTap: press,
        child: Text(
         login ?  "Sign Up": "Sign In",
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }
}
