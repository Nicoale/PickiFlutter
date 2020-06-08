import 'package:flutter/material.dart';
import 'package:picki/Screens/components/body.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        child: Column(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/topwelcome.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/bottomwelcome.png",
                width: size.width * 0.2,
              )),
          child,
        ],
      ),
    );
  }
}
