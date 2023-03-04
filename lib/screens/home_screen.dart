import 'package:flutter/material.dart';
import 'package:psl/screens/schedule_screen.dart';
import 'package:psl/screens/teams_screen.dart';
import 'package:psl/screens/vinue_Screen.dart';
import 'package:psl/utility/data_api.dart';

import '../widget/background_widget.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_home.dart';
import 'history_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          text: 'Home',
        ),
        body: BackgroundWidget(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 15),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ScheduleScreen())));
                  },
                  child: CustomContainer(
                    text: 'Schedule',
                    image: 'assets/icons/clock-o.png',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => VinueScreen())));
                  },
                  child: CustomContainer(
                    text: 'Venues',
                    image: 'assets/icons/location.png',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HistoryScreen())));
                  },
                  child: CustomContainer(
                    text: 'History',
                    image: 'assets/icons/history.png',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TeamScreen()));
                  },
                  child: CustomContainer(
                    text: 'Teams',
                    image: 'assets/icons/Teams.png',
                  ),
                ),
                InkWell(
                  onTap: () async {
                    String url = 'https://propakistani.pk/psl-2022/live-score/';
                    if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
                  },
                  child: CustomContainer(
                    text: 'Live Score',
                    image: 'assets/icons/live scores.png',
                  ),
                ),
                InkWell(
                  onTap: () async {
                    const url =
                        'https://www.youtube.com/results?search_query=psl+highlights';
                          if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
                          }
       
                  },
                  child: CustomContainer(
                    text: 'High lights',
                    image: 'assets/icons/youtube.png',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
