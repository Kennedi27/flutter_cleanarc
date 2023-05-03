import 'package:clean_arc/config/theme/colors_config.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class EventCard extends StatelessWidget {
  final String name;
  final String date;
  final String time;

  const EventCard(
      {Key? key, required this.name, required this.date, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(name),
      Text(date),
      Text("Doors @ $time") // formatted string with variable in Dart
    ]);
  }
}

class CardVerticalWithDoubleTap extends StatelessWidget {
  final double? cardWidth;
  final double? cardHeight;
  final double cardVericalPadding;
  final double cardVHorizontalPadding;
  final double? imgHeight;
  final bool isFavorite;
  final bool imgFromNetwork;
  final String? imgUrl;
  final TextCardHome textName;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onTap;

  const CardVerticalWithDoubleTap(
      {Key? key,
      this.cardWidth,
      this.cardHeight,
      this.imgFromNetwork = false,
      this.cardVericalPadding = 10,
      this.cardVHorizontalPadding = 10,
      this.imgUrl,
      this.imgHeight,
      this.isFavorite = false,
      this.onDoubleTap,
      this.onTap,
      required this.textName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img = 'assets/images/imgno.jpg';
    img = imgUrl ?? img;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: greyColor.withOpacity(0.5)),
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: cardHeight,
        width: cardWidth,
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onDoubleTap: onDoubleTap,
                    onTap: onTap,
                    child: imgFromNetwork
                        ? Image.network(
                            img,
                            fit: BoxFit.cover,
                            height: imgHeight,
                          )
                        : Image.asset(
                            img,
                            fit: BoxFit.cover,
                            height: imgHeight,
                          ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    onTap: onDoubleTap,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: defaultColor.withOpacity(0.4),
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                      child: isFavorite
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 18,
                            )
                          : Icon(
                              Icons.favorite_border_outlined,
                              color: defaultColor.withOpacity(0.8),
                              size: 18,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: cardVericalPadding,
                  horizontal: cardVHorizontalPadding,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textName.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Row(children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 14,
                      ),
                      Text(
                        textName.place,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: greyColor,
                          fontSize: 13,
                        ),
                      ),
                    ]),
                    const SizedBox(height: 20),
                    Text(
                      textName.discount,
                      style: const TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 3,
                          decorationColor: greyColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              textName.price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: primaryColor),
                            ),
                            Text(
                              '/${textName.unitprice}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: greyColor),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12,
                            ),
                            Text(
                              textName.rating,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: greyColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardHorizontalWithDoubleTap extends StatelessWidget {
  final double? cardWidth;
  final double? cardHeight;
  final double cardVericalPadding;
  final double cardVHorizontalPadding;
  final bool imgFromNetwork;
  final String? imgUrl;
  final double? imgWidth;
  final TextCardHome textName;
  final bool isFavorite;
  final double cardBorderRadius;

  const CardHorizontalWithDoubleTap(
      {Key? key,
      this.cardWidth,
      this.cardHeight,
      this.imgFromNetwork = false,
      this.cardVericalPadding = 10,
      this.cardVHorizontalPadding = 10,
      this.imgUrl,
      this.imgWidth,
      this.isFavorite = false,
      this.cardBorderRadius = 20,
      required this.textName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img = 'assets/images/imgno.jpg';
    img = imgUrl ?? img;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: greyColor.withOpacity(0.5)),
        borderRadius: BorderRadiusDirectional.circular(cardBorderRadius),
      ),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: cardHeight,
        width: cardWidth,
        child: Row(
          children: [
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onDoubleTap: () {},
                    onTap: () {},
                    child: imgFromNetwork
                        ? Image.network(
                            img,
                            fit: BoxFit.cover,
                            width: imgWidth,
                            height: imgWidth,
                          )
                        : Image.asset(
                            img,
                            fit: BoxFit.cover,
                            width: imgWidth,
                            height: imgWidth,
                          ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: defaultColor.withOpacity(0.4),
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                    child: isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 16,
                          )
                        : Icon(
                            Icons.favorite_border_outlined,
                            color: defaultColor.withOpacity(0.8),
                            size: 16,
                          ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: cardVericalPadding,
                horizontal: cardVHorizontalPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textName.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 14,
                          ),
                          Text(
                            textName.place,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: greyColor,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textName.discount,
                        style: const TextStyle(
                            fontSize: 12,
                            color: greyColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 3,
                            decorationColor: greyColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                textName.price,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: primaryColor),
                              ),
                              Text(
                                '/${textName.unitprice}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: greyColor),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 12,
                              ),
                              Text(
                                textName.rating,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: greyColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper

List<TextCardHome> textCardHomeFromJson(String str) => List<TextCardHome>.from(
    json.decode(str).map((x) => TextCardHome.fromJson(x)));

String textCardHomeToJson(List<TextCardHome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TextCardHome {
  String name;
  String place;
  String discount;
  String price;
  String unitprice;
  String rating;

  TextCardHome({
    required this.name,
    required this.place,
    required this.discount,
    required this.price,
    required this.unitprice,
    required this.rating,
  });

  factory TextCardHome.fromJson(Map<String, dynamic> json) => TextCardHome(
        name: json["name"],
        place: json["place"],
        discount: json["discount"],
        price: json["price"],
        unitprice: json["unitprice"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "place": place,
        "discount": discount,
        "price": price,
        "unitprice": unitprice,
        "rating": rating,
      };
}
