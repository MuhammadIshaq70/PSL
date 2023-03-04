class Vanue {

  String country;
  String city;
  String stadium;
  String image;

  Vanue({
    required this.country,
    required this.city,
    required this.stadium,
    required this.image,});

  factory Vanue.fromJson(Map<String, dynamic>map){
    return Vanue(country: map['country'],
        city: map['city'],
        stadium: map['stadium'],
        image: map['image']);
  }

}