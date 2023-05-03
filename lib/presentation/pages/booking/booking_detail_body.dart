import 'package:clean_arc/config/theme/colors_config.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/size_config.dart';
import '../../widgets/box_widget.dart';
import '../../widgets/text_widget.dart';

class BookingDetailBody extends StatefulWidget {
  const BookingDetailBody({super.key});

  @override
  State<BookingDetailBody> createState() => _BookingDetailBody();
}

class _BookingDetailBody extends State<BookingDetailBody> {
  bool _lights = false;
  bool hideSummary = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 160,
                    child: Image.network(
                      "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg",
                      height: 160,
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
              Positioned(
                bottom: 0,
                child: BoxSizeWidget(
                  boxPaddingHorizontal: 20,
                  boxPaddingVertical: 15,
                  boxWidth: screenWidth * 0.6,
                  hideOverflow: false,
                  boxRadius: 20,
                  withShadow: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const TextDefaultStyle(
                        text: "Himeji Castle",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextHorizontalWithIcon(
                            icon: Icons.confirmation_num_outlined,
                            text: "1 ticket",
                            fontColor: primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            iconSize: 18,
                            spaceIconWithText: 3,
                          ),
                          SizedBox(width: 8),
                          TextHorizontalWithIcon(
                            icon: Icons.calendar_month_outlined,
                            text: "18 Oct 2022",
                            fontColor: primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            iconSize: 18,
                            spaceIconWithText: 3,
                          ),
                          SizedBox(width: 8),
                          TextHorizontalWithIcon(
                            icon: Icons.timelapse_sharp,
                            text: "19:00",
                            fontColor: primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            iconSize: 18,
                            spaceIconWithText: 3,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: Column(
            children: [
              Row(
                children: const [
                  TextDefaultStyle(
                    text: "Contact Details",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: 5),
                  TextDefaultStyle(
                    text: "(FOR E-VOUCHER)",
                    fontColor: greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              BoxSizeWidget(
                boxPaddingHorizontal: 20,
                boxPaddingVertical: 15,
                boxWidth: screenWidth,
                hideOverflow: false,
                boxRadius: 20,
                withShadow: true,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            BoxSizeWidget(
                              boxPaddingHorizontal: 0,
                              boxPaddingVertical: 0,
                              boxWidth: 24,
                              boxHeight: 24,
                              hideOverflow: false,
                              boxRadius: 12,
                              boxBgColor: primaryColor,
                              // withShadow: true,
                            ),
                            const SizedBox(width: 10),
                            const TextDefaultStyle(
                              text: "Bruce Wayne",
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.edit,
                            color: primaryColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextHorizontalWithIcon(
                      icon: Icons.markunread_sharp,
                      text: "wayneenterprice@mail.com",
                      fontColor: textPrimaryColor.withOpacity(0.6),
                      iconColor: primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      iconSize: 16,
                      spaceIconWithText: 5,
                    ),
                    const SizedBox(height: 8),
                    TextHorizontalWithIcon(
                      icon: Icons.call,
                      text: "+6281234567890",
                      fontColor: textPrimaryColor.withOpacity(0.6),
                      iconColor: primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      iconSize: 16,
                      spaceIconWithText: 5,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          width: screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextDefaultStyle(
                text: "Guest Details",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              SwitchListTile(
                activeColor: primaryColor,
                contentPadding: EdgeInsets.zero,
                title: const TextDefaultStyle(
                  text: "Same As Contact Details",
                  fontColor: greyColor,
                  fontWeight: FontWeight.w600,
                ),
                value: _lights,
                onChanged: (bool value) {
                  setState(
                    () {
                      _lights = value;
                    },
                  );
                },
              ),
              BoxSizeWidget(
                boxPaddingHorizontal: 20,
                boxPaddingVertical: 15,
                boxWidth: screenWidth,
                hideOverflow: false,
                boxRadius: 8,
                withShadow: true,
                child: Column(
                  children: [
                    TextWithSummary(
                        textTitle: const TextDefaultStyle(
                          text: "Mr. Bruce Wayne",
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        summary: Column(
                          children: const [
                            SizedBox(height: 10),
                            Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged")
                          ],
                        ),
                        showHideSummary: showHideSummary,
                        hideTextBody: hideSummary),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30)
      ],
    );
  }

  void showHideSummary() {
    if (!mounted) return;
    setState(() {
      hideSummary = !hideSummary;
    });
  }
}
