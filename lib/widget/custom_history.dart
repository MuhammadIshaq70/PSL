import 'package:flutter/material.dart';
import 'package:psl/utility/data_api.dart';

class Customhistory extends StatelessWidget {
  var match;
   Customhistory({Key? key,required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 217,
          width: 344,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14), color: Colors.white),
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
                      children: const [
                        Text(
                          '  Seasion 1',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          ' Vanue ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    match.winnerCaptain),
                                fit: BoxFit.fitHeight)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('winner',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                       Text(match.winner,
                          style:const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                       Text(match.winnerScore,
                          style:const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),


                    ],
                  ),
                  Column(
                    children: [
                       Text(
                        ' PSL\n${match.year}',
                        style:
                           const  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 120,
                          width: 30,
                          child: const Image(
                            image: AssetImage(
                              'assets/psl-trophy.png',
                            ),
                            fit: BoxFit.cover,
                          ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image:  DecorationImage(
                                image: AssetImage(
                                    match.runnerUpCaptain),
                                fit: BoxFit.fitHeight)),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      const Text('RunnerUp ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                       Text(match.runnerUp,
                          style:  const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                       Text(match.runnerUpScore,
                          style:const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),


                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
