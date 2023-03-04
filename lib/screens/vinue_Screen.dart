import 'package:flutter/material.dart';
import 'package:psl/models/Vanue.dart';

import '../utility/data_api.dart';
import '../widget/background_widget.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_vinue.dart';

class VinueScreen extends StatefulWidget {
  const VinueScreen({Key? key}) : super(key: key);

  @override
  State<VinueScreen> createState() => _VinueScreenState();
}

class _VinueScreenState extends State<VinueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          text: 'Venues',
        ),
        body: BackgroundWidget(
            child: FutureBuilder<List<Vanue>>(
                future: DataApi.getAllVanue(context),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    List<Vanue> vanue1 = snapshot.data;
                    return ListView.builder(
                        itemCount: vanue1.length,
                        itemBuilder: (context, index) {
                          return CustomVenue(vanue2: vanue1[index],);
                        });
                  }
                  else{return const CircularProgressIndicator();
                }})));
  }
}
// ListView(
// children: [
// CustomVenue(
// text: ' Peshawar',
// text2: ' Lahore Stadium  ',
// image: 'assets/stadium/Lahore.jpg',
// ),
// CustomVenue(
// text: ' Peshawar',
// text2: ' Multan Stadium  ',
// image: 'assets/stadium/Multan-Cricket-Stadium-1.jpg',
// ),
// CustomVenue(
// text: ' Peshawar',
// text2: ' Rawalpindi Stadium  ',
// image: 'assets/stadium/Rawalpindi cricket stadum.jpg',
// ),
// CustomVenue(
// text: ' Peshawar',
// text2: ' karachi Stadium  ',
// image: 'assets/stadium/karachi national stadium.png',
// ),
// ],
// ),
