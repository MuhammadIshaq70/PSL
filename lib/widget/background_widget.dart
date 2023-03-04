import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  var child;
   BackgroundWidget({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        color: Colors.white,

          //image: DecorationImage(
            //  image: AssetImage('assets/bg.jpeg'), fit: BoxFit.cover)
    ),
      child: child,
    );
  }
}
