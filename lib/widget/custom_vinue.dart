import 'package:flutter/material.dart';

class CustomVenue extends StatelessWidget {
  var vanue2;


  CustomVenue(
      {Key? key,required this.vanue2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 220,
        width: 337,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.green),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14), color: Colors.green),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      Text(
                        vanue2.city,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900,color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.stadium),
                      Text(
                        vanue2.stadium,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900,color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 179,
              width: double.infinity,
              decoration:const  BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),

              child: Image(
                image: AssetImage(vanue2.image),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
