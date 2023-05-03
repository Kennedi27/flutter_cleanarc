import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../config/theme/colors_config.dart';
import '../../../config/theme/size_config.dart';
// import '../../widgets/bottom_item.dart';
// import '../../widgets/box_widget.dart';
import '../../../domain/models/CardModel/text_insight_card.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/form/button_widget.dart';
import '../../widgets/form/text_input.dart';
import '../../widgets/text_widget.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBody();
}

class _HomePageBody extends State<HomePageBody> {
  List<Welcome> labelCat = [];
  List<TextInsightCard> insightDestinations = [];
  List<int> isMyFavorite = [];
  int labelActive = 0;
  final List<Map<String, dynamic>> labels = [
    {"id": 1, "label": "All"},
    {"id": 2, "label": "Museum"},
    {"id": 3, "label": "Cultural"},
    {"id": 4, "label": "Zoo"},
    {"id": 5, "label": "Natural"},
    {"id": 6, "label": "Religion"},
    {"id": 7, "label": "Beach"},
    {"id": 8, "label": "Florest"},
  ];

  List<Map<String, dynamic>> cardLabel = [
    {
      "id": 1,
      "imgUrl":
          "https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg",
      "isFavorite": false,
      "name": "Himeji Castel",
      "place": "HIMEJI, JAPAN",
      "discount": "25",
      "price": "125",
      "unitprice": "PERSON",
      "rating": "4.5",
      "signPrice": "USD"
    },
    {
      "id": 2,
      "imgUrl":
          "https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg",
      "isFavorite": false,
      "name": "Himeji Castel",
      "place": "HIMEJI, JAPAN",
      "discount": "25",
      "price": "125",
      "unitprice": "PERSON",
      "rating": "4.5",
      "signPrice": "USD"
    },
    {
      "id": 3,
      "imgUrl":
          "https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg",
      "isFavorite": false,
      "name": "Himeji Castel",
      "place": "HIMEJI, JAPAN",
      "discount": "25",
      "price": "125",
      "unitprice": "PERSON",
      "rating": "4.5",
      "signPrice": "USD"
    },
    {
      "id": 4,
      "imgUrl":
          "https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg",
      "isFavorite": false,
      "name": "Himeji Castel",
      "place": "HIMEJI, JAPAN",
      "discount": "25",
      "price": "125",
      "unitprice": "PERSON",
      "rating": "4.5",
      "signPrice": "USD"
    },
  ];
  @override
  void initState() {
    super.initState();

    labelCat = labels.map((e) => Welcome.fromJson(e)).toList();
    insightDestinations =
        cardLabel.map((e) => TextInsightCard.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: defaultColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'GOOD MORNING',
                        style: TextStyle(fontSize: 10, color: greyColor),
                      ),
                      TextTitleStyle(
                        text: 'Kobe, Japan',
                        fontColor: primaryColor,
                      )
                    ],
                  ),
                  const Icon(
                    Icons.notifications_none_outlined,
                    color: primaryColor,
                  )
                ],
              ),
              const SizedBox(height: 15),
              TextInputCustom(
                inputHeight: 40,
                inputWidth: screenWidth,
                inputBorderRadius: 10,
                inputBgColor: defaultColor,
                inputPlaceHolder: 'Explore Something Fun',
                inputLeftIcon: const Icon(
                  Icons.search,
                  color: primaryColor,
                ),
                inputBorderColor: greyColor,
                inputBorderWidth: 0.5,
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: labelCat.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        ButtonFlexibleCustom(
                          buttonAct: () {
                            // getValueForm();
                            onTabTapped(index);
                          },
                          buttonText: labelCat[index].label,
                          fontSize: 14,
                          bgColor: labelActive == index
                              ? primaryColor
                              : defaultColor,
                          txtColor: labelActive == index
                              ? defaultColor
                              : primaryColor,
                          paddingVertical: 5,
                          paddingHorizontal: 15,
                          borderRadius: 15,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.insights_outlined, color: secondaryColor),
                      SizedBox(width: 5),
                      TextSmallTitleStyle(
                        text: 'Insights',
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                  TextWithTitleStyle(
                    onTap: () {},
                    child: Row(
                      children: const [
                        TextSmallTitleStyle(
                          text: 'See All',
                          fontWeight: FontWeight.normal,
                          fontColor: greyColor,
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: greyColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 240,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: insightDestinations.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CardVerticalWithDoubleTap(
                          onDoubleTap: () {
                            adToFavorite(insightDestinations[index].id);
                          },
                          onTap: () {
                            detailInsight(insightDestinations[index].id);
                          },
                          cardWidth: screenWidth * 0.40,
                          imgFromNetwork: true,
                          imgUrl: insightDestinations[index].imgUrl,
                          imgHeight: 120,
                          isFavorite: isMyFavorite
                                  .contains(insightDestinations[index].id)
                              ? !insightDestinations[index].isFavorite
                              : insightDestinations[index].isFavorite,
                          textName: TextCardHome(
                            name: insightDestinations[index].name,
                            place: insightDestinations[index].place,
                            discount: insightDestinations[index].discount,
                            price: insightDestinations[index].price,
                            unitprice: insightDestinations[index].unitprice,
                            rating: insightDestinations[index].rating,
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.near_me_outlined,
                        color: secondaryColor,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      TextSmallTitleStyle(
                        text: 'Nearby',
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                  TextWithTitleStyle(
                    onTap: () {},
                    child: Row(
                      children: const [
                        TextSmallTitleStyle(
                          text: 'See All',
                          fontWeight: FontWeight.normal,
                          fontColor: greyColor,
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: greyColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 130,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardHorizontalWithDoubleTap(
                      cardWidth: screenWidth * 0.75,
                      cardBorderRadius: 12,
                      imgFromNetwork: true,
                      isFavorite: true,
                      imgUrl:
                          'https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg',
                      imgWidth: 130,
                      textName: TextCardHome(
                          name: 'Himeji Castel',
                          place: 'Himeji, Japan',
                          discount: '\$20',
                          price: '\$120',
                          unitprice: 'PERSON',
                          rating: '4.5'),
                    ),
                    const SizedBox(width: 20),
                    CardHorizontalWithDoubleTap(
                      cardWidth: screenWidth * 0.75,
                      cardBorderRadius: 12,
                      imgFromNetwork: true,
                      imgUrl:
                          'https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg',
                      imgWidth: 130,
                      textName: TextCardHome(
                          name: 'Himeji Castel',
                          place: 'Himeji, Japan',
                          discount: '\$20',
                          price: '\$120',
                          unitprice: 'PERSON',
                          rating: '4.5'),
                    ),
                    const SizedBox(width: 20),
                    CardHorizontalWithDoubleTap(
                      cardWidth: screenWidth * 0.75,
                      cardBorderRadius: 12,
                      imgFromNetwork: true,
                      imgUrl:
                          'https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg',
                      imgWidth: 130,
                      textName: TextCardHome(
                          name: 'Himeji Castel',
                          place: 'Himeji, Japan',
                          discount: '\$20',
                          price: '\$120',
                          unitprice: 'PERSON',
                          rating: '4.5'),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    if (!mounted) return;
    setState(() {
      labelActive = index;
    });
  }

  void adToFavorite(int index) {
    if (!mounted) return;
    setState(() {
      if (isMyFavorite.contains(index)) {
        isMyFavorite.remove(index);
      } else {
        isMyFavorite.add(index);
      }
    });
  }

  void detailInsight(int index) {
    if (!mounted) return;
    // setState(() {
    //   labelActive = index;
    // });
    Navigator.pushNamed(context, '/detinationdetail');
  }
}

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.id,
    required this.label,
  });

  int id;
  String label;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        label: json["label"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "label": label,
      };
}
