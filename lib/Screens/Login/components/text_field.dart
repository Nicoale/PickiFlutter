import 'package:flutter/material.dart';
import 'package:picki/constant.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);
   final Widget child;

  @override
  Widget build(BuildContext context) {
   final  Size size = MediaQuery.of(context).size;
    return Container( 
      margin:  const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical:5 ),
      width: size.width * 0.35,
      decoration: BoxDecoration( 
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
