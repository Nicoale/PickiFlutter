import 'package:flutter/material.dart';
import 'package:picki/Screens/Login/components/already_have_an_account.dart';
import 'package:picki/Screens/Login/components/background.dart';
import 'package:picki/Screens/Login/components/rounded_Input.dart';
import 'package:picki/Screens/Login/components/rounded_password.dart';
import 'package:picki/Screens/SignUp/components/rounded_button.dart';
import 'package:picki/Screens/SignUp/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class _LoginData {
  String email = '';
  String password = '';
}

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData _data = new _LoginData();

  @override
  String url = 'https:localhost/3000/api/v1';
  Future<String> makeRequest() async {
    final http.Response response = await http
        .get(Uri.encodeFull(url), headers: {'Accept': 'application/json'});
    print(response.body);
    return (response.body);
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
        child: Form(
      key: this._formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
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
            onChanged: (String value) {
              this._data.email = value;
            },
          ),
          RoundedPasswordField(
            onChanged: (String value) { 
              this._data.password = value;
              },
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              makeRequest();
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAccountWidget(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute<dynamic>(builder: (BuildContext context) {
                return SignUpScreen();
              }));
            },
          ),
        ],
      ),
    ));
  }
}
