import 'package:flutter/material.dart';

import '../screens/history_screen.dart';

class CustomContainer extends StatelessWidget {
   String text;
   var image;

   CustomContainer  ({Key? key,required this.text,required this.image,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        //height: MediaQuery.of(context).size.height *0.26,
       // width: MediaQuery.of(context).size.width *0.22,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white10,),
        child: Column(
          children: [
            Image(image: AssetImage(image),height: 140,
            width: 150,),
            Text(text,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)

          ],
        ),

      ),
    );
  }
}
