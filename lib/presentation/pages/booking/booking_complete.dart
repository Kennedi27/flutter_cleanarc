import 'package:clean_arc/config/theme/colors_config.dart';
import 'package:clean_arc/config/theme/size_config.dart';
import 'package:flutter/material.dart';

import '../../widgets/form/button_widget.dart';
import '../../widgets/text_widget.dart';

class BookingComplete extends StatefulWidget {
  const BookingComplete({super.key});

  @override
  State<BookingComplete> createState() => _BookingComplete();
}

class _BookingComplete extends State<BookingComplete> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.check_circle_outline,
                size: 100,
                color: primaryColor,
              ),
              SizedBox(height: 5),
              TextTitleStyle(text: "Payment Success"),
              SizedBox(height: 3),
              TextDefaultStyle(
                text: "Payment have been complete, enjoy your trip!",
                fontSize: 14,
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        Container(
          width: screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      clipBehavior: Clip.hardEdge,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      height: 40,
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const TextDefaultStyle(
                      text: "Himeju Castle",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.confirmation_num_outlined,
                      color: secondaryColor,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextDefaultStyle(
                          text: "Entrace Ticket",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        Row(
                          children: const [
                            TextDefaultStyle(
                              text: "1 TICKET",
                              fontSize: 12,
                            ),
                            SizedBox(width: 10),
                            TextHorizontalWithIcon(
                              spaceIconWithText: 2,
                              icon: Icons.person,
                              iconSize: 14,
                              iconColor: secondaryColor,
                              text: "Himeji",
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontColor: greyColor,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.confirmation_num_outlined,
                      color: secondaryColor,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextDefaultStyle(
                          text: "Show Date",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        Row(
                          children: const [
                            TextDefaultStyle(
                              text: "Tue, 18 Oct 2022",
                              fontSize: 12,
                            ),
                            SizedBox(width: 10),
                            TextHorizontalWithIcon(
                              spaceIconWithText: 2,
                              icon: Icons.timelapse_sharp,
                              iconSize: 14,
                              iconColor: secondaryColor,
                              text: "19:00",
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontColor: greyColor,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ButtonFlexibleWithSizeCustom(
                height: 40,
                width: screenWidth - paddingXXL,
                buttonAct: () {},
                buttonText: 'Back To Home',
                fontSize: 14,
                bgColor: primaryColor,
                txtColor: defaultColor,
                borderRadius: 10,
                fontWeight: FontWeight.w500,
              ),
              ButtonFlexibleWithSizeCustom(
                height: 40,
                width: screenWidth - paddingXXL,
                buttonAct: () {},
                buttonText: 'See Details',
                fontSize: 14,
                bgColor: defaultColor,
                txtColor: primaryColor,
                borderRadius: 10,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
