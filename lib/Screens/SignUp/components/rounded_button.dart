import 'package:flutter/material.dart';
import 'package:picki/constant.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.textColor= Colors.black,
    this.color= kPrimaryColor,
   
  }) : super(key: key);
  final String text;
  final Function press;
  final Color color, textColor;


  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width *0.5,
      child: ClipRect(
    
          child: FlatButton(
            
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: kPrimaryColor,
          splashColor: Colors.white,
          onPressed: () {  },
          child: Text(
            text,
            style: TextStyle(color:Colors.white),
          ),
             icon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
