import 'package:flutter/material.dart';

class CustomSchedule extends StatelessWidget {
  const CustomSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Container(
        height: 211,
        width: 344,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:const [
                      Text(
                        ' Match: 1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [Text('9:00 AM')],
                  ),
                  Row(
                    children: [Text('12/1/2023')],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: const DecorationImage(
                            image: AssetImage('assets/flage/peshawar.png'),
                            fit: BoxFit.cover),
                      ),
                      // const SizedBox(
                      // height: 10,
                    ),
                    const Text('Peshawar zalmi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const Text('Captain Name',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    const Text('Host name',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'VS',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: const DecorationImage(
                            image: AssetImage('assets/flage/islamabad.png')),
                      ),
                      // const SizedBox(
                      // height: 10,
                    ),
                    const Text('Islamabad united',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const Text(' ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    const Text('Host name',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Center(
                      child: Container(
                        height: 30,
                        width: 140,
                        decoration:const  BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12))),
                        child: const Center(
                            child: Text(
                          "Peshawar",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
