import 'package:flutter/material.dart';
import 'package:picki/constant.dart';


class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);
  final bool login;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        login ? 'Dont have an Account?':'Already have an Account?',
        style: const TextStyle(color: kPrimaryColor),
      ),
      GestureDetector(
        onTap: (){press}:
        child: Text(
         login ?  'Sign Up': 'Sign In',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }
}
