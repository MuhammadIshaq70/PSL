class Teams {
  String fullName;
  String shortName;
  String captain;
  String flag;
  String captainImage;

  Teams({
    required this.fullName,
    required this.shortName,
    required this.captain,
    required this.flag,
    required this.captainImage,});

  factory Teams.fromjson(Map<String, dynamic>map){
    return Teams(fullName: map['fullName'],
      shortName: map['shortName'],
      captain: map['captain'],
      flag: map['flag'],
      captainImage: map['captainImage'],);

  }

}