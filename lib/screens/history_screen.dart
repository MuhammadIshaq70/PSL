import 'package:flutter/material.dart';
import 'package:psl/utility/data_api.dart';

import '../widget/background_widget.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_history.dart';
import '../models/match.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: CustomAppbar(
        text: 'History',
      ),
      body:BackgroundWidget(
        child: FutureBuilder<List<Match>>(
          future:DataApi.getAllMatches(context) ,
          builder:( BuildContext context,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              List<Match> matches = snapshot.data;
              return ListView.builder(
                  itemCount:matches.length,
                  itemBuilder: (context,index){
                return Customhistory(match: matches[index],);
              });
            }else{
             return const Center(child: CircularProgressIndicator(),);
            }
      }
        )
      )
    );
  }
}
