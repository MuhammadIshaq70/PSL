import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  var teams2;
   CustomScreen({Key? key,required this.teams2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 220,
          width: 336,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14), color: Colors.green),
          child: Column(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                    image:  DecorationImage(
                        image: AssetImage(teams2.flag),
                        fit: BoxFit.fitHeight)),
                width: double.infinity,
              ),
              const SizedBox(
                height: 7,
              ),
              Expanded(
                  child: Column(
                children:  [
                  Text(
                    teams2.fullName,
                    style:const  TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    teams2.captain,
                    style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
