import 'package:flutter/material.dart';

import '../widget/background_widget.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        text: 'Schedule',
      ),
      body:BackgroundWidget(
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
          return  const CustomSchedule();

        })),
      );

  }
}



