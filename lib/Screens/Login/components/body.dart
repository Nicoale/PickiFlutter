import 'package:flutter/material.dart';
import 'package:picki/Screens/Login/components/already_have_an_account.dart';
import 'package:picki/Screens/Login/components/background.dart';
import 'package:picki/Screens/Login/components/rounded_Input.dart';
import 'package:picki/Screens/Login/components/rounded_password.dart';
import 'package:picki/Screens/SignUp/components/rounded_button.dart';
import 'package:picki/Screens/SignUp/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:http/http.dart' as http;
// import 'package:picki/api/environment.dart' as environment;

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height *0.03),
          SvgPicture.asset(
            'assets/icons/cooking.svg',
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height *0.03),
          RoundedInputField(
            hintText: 'Your  Email',
            onChanged: (String value) {},
            
          ),
          RoundedPasswordField(
            onChanged: (String value) {},
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
          ),
          SizedBox(height: size.height *0.03),
          AlreadyHaveAccountWidget(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context){
                    return SignUpScreen();
                  }
                  )
              );
            },
            ),
        ],
      ),
    );
  }

} 

