import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  const Background({
    Key key, 
    this.child,
  }) : super(key: key);
  final Widget child;


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container( 
      width: double.infinity,
      height: size.height,
      child: Stack( 
        alignment: Alignment.center,
        children: <Widget>[ 
          Positioned( 
            top: 0,
            left: 0,
            child: Image.asset( 
            'assets/images/topwelcome.png',
            width: size.width * 0.35,
              ),
            ),
          Positioned( 
            bottom: 0,
            right: 0,
            child: Image.asset( 
            'assets/images/bottomwelcome.png',
            width: size.width * 0.35,
                ),
               ),
               child,
            ],
        ),
      );
  }
}