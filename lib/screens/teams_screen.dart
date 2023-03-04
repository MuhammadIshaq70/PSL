import 'package:flutter/material.dart';
import 'package:psl/models/Teams.dart';

import '../utility/data_api.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_teams.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: 'Teams',),
      body: FutureBuilder<List<Teams>>(
          future:DataApi.getAllTeams(context) ,
          builder:( BuildContext context,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              List<Teams> teams1 = snapshot.data;
              return ListView.builder(
                  itemCount:teams1.length,
                  itemBuilder: (context,index){
                    return CustomScreen(teams2: teams1[index],);
                  });
            }else{
              return const Center(child: CircularProgressIndicator(),);
            }
          }
      )
    );
  }
}
