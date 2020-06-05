import 'package:flutter/material.dart';
import 'package:picki/Screens/Login/components/text_field.dart';
import 'package:picki/constant.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final   ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key, 
    this.hintText,
     this.icon = Icons.person,
      this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer( 
      child: TextField(
        decoration: InputDecoration( 
          icon: Icon( 
            icon,
          color: kPrimaryColor, 
          ),
           hintText: hintText,
           border: InputBorder.none, 
           ),
           ), 
    );
  }
}

