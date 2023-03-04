class Match {
  String winner;
  String runnerUp;
  String host;
  String winnerCaptain;
  String runnerUpCaptain;
  String winnerScore;
  String runnerUpScore;
  String year;

  Match({
    required this.winner,
    required this.runnerUp,
    required this.host,
    required this.winnerCaptain,
    required this.runnerUpCaptain,
    required this.winnerScore,
    required this.runnerUpScore,
    required this.year,
  });

  factory Match.fromJson(Map<String, dynamic> map) {
    return Match(
        winner: map['winner'],
        runnerUp: map['runnerUp'],
        host: map['host'],
        winnerCaptain: map['winnerCaptain'],
        runnerUpCaptain: map['runnerUpCaptain'],
        winnerScore: map['winnerScore'],
        runnerUpScore: map['runnerUpScore'],
        year: map['year']);
  }
}
