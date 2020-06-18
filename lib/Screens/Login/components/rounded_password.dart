import 'package:flutter/material.dart';
import 'package:picki/Screens/Login/components/text_field.dart';
import 'package:picki/constant.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
