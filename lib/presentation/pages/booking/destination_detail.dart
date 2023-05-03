import 'package:clean_arc/config/theme/colors_config.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/size_config.dart';
import '../../widgets/box_widget.dart';
import '../../widgets/form/button_widget.dart';
import '../../widgets/form/text_input.dart';
import '../../widgets/text_widget.dart';
import 'package:intl/intl.dart';

class DestinationDetailPage extends StatefulWidget {
  const DestinationDetailPage({super.key});

  @override
  State<DestinationDetailPage> createState() => _DestinationDetailPage();
}

class _DestinationDetailPage extends State<DestinationDetailPage> {
  int imageIndex = 0;
  int calenderActive = 0;
  DateTime initialDateTime = DateTime.now();
  String img = 'assets/images/imgno.jpg';
  List<String> images = [
    'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
    'https://cdn.pixabay.com/photo/2013/07/25/01/31/forest-166733_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
    'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_960_720.jpg',
    'https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_960_720.jpg'
  ];

  List<DateTime> datetimes = [];

  @override
  void initState() {
    for (var i = 0; i < 14; i++) {
      datetimes.add(initialDateTime.add(Duration(days: i)));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: defaultColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/home'),
                      child: const Icon(
                        Icons.arrow_back,
                        color: primaryColor,
                        size: 28,
                      ),
                    ),
                    TextInputCustom(
                      inputHeight: 40,
                      inputWidth: screenWidth * 0.70,
                      inputBorderRadius: 15,
                      inputBgColor: defaultColor,
                      inputPlaceHolder: 'Explore Something Fun',
                      inputLeftIcon: const Icon(
                        Icons.search,
                        color: primaryColor,
                        size: 30,
                      ),
                      inputBorderColor: greyColor,
                      inputBorderWidth: 0.5,
                    ),
                    const Icon(
                      Icons.notifications_none_outlined,
                      color: primaryColor,
                      size: 28,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Image.network(
                    images[imageIndex],
                    width: double.infinity,
                    height: screenWidth * 0.65,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              height: 70,
                              width: 90,
                              child: InkWell(
                                onTap: () {
                                  changePrimaryImage(index);
                                },
                                child: Image.network(
                                  images[index],
                                  height: 70,
                                  width: 90,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          const SizedBox(
                            width: 8,
                          )
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextTitleStyle(
                          text: 'Himeji Castle',
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: secondaryColor,
                            ),
                            SizedBox(width: 2),
                            TextDefaultStyle(
                              text: 'Himeji',
                              fontColor: primaryColor,
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.social_distance,
                              size: 20,
                              color: secondaryColor,
                            ),
                            TextDefaultStyle(
                              text: '4.5 Km',
                              fontColor: primaryColor,
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.timelapse_outlined,
                              size: 20,
                              color: secondaryColor,
                            ),
                            SizedBox(width: 2),
                            TextDefaultStyle(
                              text: '10 min',
                              fontColor: primaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: const [
                            Icon(
                              Icons.calendar_month,
                              color: secondaryColor,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            TextDefaultStyle(
                              text: 'Mon-Fri / 09.00 - 16.00',
                              fontColor: primaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(height: 30),
                TextSubTitleStyle(
                  text: 'The National Treasure of Himeji Castle',
                  fontColor: textPrimaryColor.withOpacity(0.80),
                ),
                const SizedBox(height: 8),
                TextDefaultStyle(
                  text:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  fontColor: textPrimaryColor.withOpacity(0.75),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const TextSubTitleStyle(
                      text: 'Book for',
                    ),
                    InkWell(
                      onTap: () {
                        _chooseDate(context);
                      },
                      child: BoxSizeWidget(
                        boxPaddingHorizontal: 5,
                        boxPaddingVertical: 5,
                        // boxBorderWidth: 0.5,
                        // boxBorderColor: greyColor,
                        // boxRadius: 10,
                        child: const Icon(
                          Icons.edit_calendar_rounded,
                          color: primaryColor,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: datetimes.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          BoxSizeWidget(
                            boxPaddingHorizontal: 5,
                            boxPaddingVertical: 5,
                            boxBgColor: calenderActive == index
                                ? const Color.fromRGBO(221, 255, 221, 0.8)
                                : defaultColor,
                            boxBorderWidth: calenderActive == index ? 0 : 0.5,
                            boxBorderColor: calenderActive == index
                                ? defaultColor
                                : greyColor,
                            boxRadius: 15,
                            boxWidth: 40,
                            child: InkWell(
                              onTap: () {
                                activeCalender(index);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextDefaultStyle(
                                    text: datetimes[index].day.toString(),
                                    fontColor: calenderActive == index
                                        ? primaryColor
                                        : textPrimaryColor.withOpacity(0.5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  ),
                                  const SizedBox(height: 2),
                                  TextDefaultStyle(
                                    text: DateFormat.MMM()
                                        .format(datetimes[index])
                                        .toUpperCase(),
                                    fontColor: calenderActive == index
                                        ? primaryColor
                                        : greyColor,
                                    fontWeight: calenderActive == index
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 5)
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextDefaultStyle(
                          text: '/PERSON',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontColor: greyColor.withOpacity(0.7),
                        ),
                        const TextTitleStyle(text: '\$25')
                      ],
                    ),
                    ButtonFlexibleCustom(
                      buttonAct: () {
                        Navigator.pushNamed(context, '/bookingdetail');
                      },
                      buttonText: 'Book',
                      fontSize: 14,
                      bgColor: primaryColor,
                      txtColor: defaultColor,
                      paddingVertical: 8,
                      paddingHorizontal: 15,
                      borderRadius: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void changePrimaryImage(int index) {
    if (!mounted) return;
    setState(() {
      imageIndex = index;
    });
  }

  void activeCalender(int index) {
    if (!mounted) return;
    setState(() {
      calenderActive = index;
    });
  }

  void _chooseDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999, 1, 1),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      helpText: 'Select booking date',
      // Can be used as title
      cancelText: 'Cancel',
      confirmText: 'Confirm',
    );
    if (selectedDate != null) {
      setState(() {
        datetimes.clear();
        initialDateTime = selectedDate;
        for (var i = 0; i < 14; i++) {
          datetimes.add(initialDateTime.add(Duration(days: i)));
        }
      });
    }
  }
}
