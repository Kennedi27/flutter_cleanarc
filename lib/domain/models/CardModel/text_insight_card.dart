// To parse this JSON data, do
//
//     final textInsightCard = textInsightCardFromJson(jsonString);

import 'dart:convert';

List<TextInsightCard> textInsightCardFromJson(String str) =>
    List<TextInsightCard>.from(
        json.decode(str).map((x) => TextInsightCard.fromJson(x)));

String textInsightCardToJson(List<TextInsightCard> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TextInsightCard {
  int id;
  String imgUrl;
  bool isFavorite;
  String name;
  String place;
  String discount;
  String price;
  String unitprice;
  String rating;
  String signPrice;

  TextInsightCard({
    required this.id,
    required this.imgUrl,
    required this.isFavorite,
    required this.name,
    required this.place,
    required this.discount,
    required this.price,
    required this.unitprice,
    required this.rating,
    required this.signPrice,
  });

  factory TextInsightCard.fromJson(Map<String, dynamic> json) =>
      TextInsightCard(
        id: json["id"],
        imgUrl: json["imgUrl"],
        isFavorite: json["isFavorite"],
        name: json["name"],
        place: json["place"],
        discount: json["discount"],
        price: json["price"],
        unitprice: json["unitprice"],
        rating: json["rating"],
        signPrice: json["signPrice"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "imgUrl": imgUrl,
        "isFavorite": isFavorite,
        "name": name,
        "place": place,
        "discount": discount,
        "price": price,
        "unitprice": unitprice,
        "rating": rating,
        "signPrice": signPrice,
      };
}
