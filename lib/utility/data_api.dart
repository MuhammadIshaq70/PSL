import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/Teams.dart';
import '../models/Vanue.dart';
import '../models/match.dart';

class DataApi
{
   static  Future<List<Match>> getAllMatches(BuildContext context) async
  {
    var matches = <Match>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await  assetBundle.loadString('assets/data/PSL.json');
    var jsonData = json.decode(data);
    var jsonHistory = jsonData['history'];

    for(var jsonMatch in jsonHistory) {
      Match match = Match.fromJson(jsonMatch);
      matches.add(match);

    }


    return matches;

  }
   static  Future<List<Vanue>> getAllVanue(BuildContext context) async
   {
     var vanue1 = <Vanue>[];
     var assetBundle = DefaultAssetBundle.of(context);
     var data = await  assetBundle.loadString('assets/data/PSL.json');
     var jsonData = json.decode(data);
     var jsonVanue = jsonData['venues'];

     for(var jsonVanues in jsonVanue) {
       Vanue match = Vanue.fromJson(jsonVanues);
       vanue1.add(match);
     }


     return vanue1;

   }
   static  Future<List<Teams>> getAllTeams(BuildContext context) async
   {
     var teams1 = <Teams>[] ;
     var assetBundle = DefaultAssetBundle.of(context);
     var data = await  assetBundle.loadString('assets/data/PSL.json');
     var jsonData = json.decode(data);
     var jsonTeams = jsonData['teams'];

     for(var jsonTeamss in jsonTeams) {
       Teams match = Teams.fromjson(jsonTeamss);

       teams1.add(match);
     }

     return teams1;

   }
}


