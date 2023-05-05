import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/colors_config.dart';
import '../../../config/theme/size_config.dart';
import '../../widgets/box_widget.dart';
import '../../widgets/form/button_widget.dart';
import '../../widgets/form/text_input.dart';
import '../../widgets/text_widget.dart';

class BookingPayment extends StatefulWidget {
  const BookingPayment({super.key});

  @override
  State<BookingPayment> createState() => _BookingPayment();
}

class _BookingPayment extends State<BookingPayment> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool paymentChoosed = false;
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
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: BoxSizeWidget(
            boxPaddingHorizontal: 10,
            boxPaddingVertical: 15,
            boxWidth: screenWidth,
            hideOverflow: false,
            boxRadius: 12,
            withShadow: true,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextDefaultStyle(
                      text: "Bruce Wayne",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    TextDefaultStyle(
                      text: "02:11:45",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontColor: Colors.redAccent,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextDefaultStyle(
                      text: paymentChoosed ? "GoPay" : "Choose Payment",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontColor: paymentChoosed ? textPrimaryColor : greyColor,
                    ),
                    InkWell(
                      onTap: () {},
                      child: TextDefaultStyle(
                        text: paymentChoosed ? "Change" : "Choose",
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontColor: primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: BoxSizeWidget(
            boxPaddingHorizontal: 20,
            boxPaddingVertical: 15,
            boxWidth: screenWidth,
            hideOverflow: false,
            boxRadius: 10,
            withShadow: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const TextDefaultStyle(
                              text: "Himeji Castle",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextHorizontalWithIcon(
                                  spaceIconWithText: 2,
                                  icon: Icons.location_on_rounded,
                                  iconSize: 12,
                                  iconColor: greyColor.withOpacity(0.8),
                                  text: "Himeji",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontColor: greyColor.withOpacity(0.8),
                                ),
                                const SizedBox(width: 5),
                                TextHorizontalWithIcon(
                                  spaceIconWithText: 2,
                                  icon: Icons.star,
                                  iconSize: 12,
                                  iconColor: greyColor.withOpacity(0.8),
                                  text: "4.5",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontColor: greyColor.withOpacity(0.8),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    BarcodeWidget(
                      barcode: Barcode.qrCode(),
                      data: "Test",
                      width: 30,
                      height: 30,
                    ),
                  ],
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
                      fontWeight: FontWeight.w500,
                      iconSize: 18,
                      spaceIconWithText: 3,
                    ),
                    SizedBox(width: 8),
                    TextHorizontalWithIcon(
                      icon: Icons.calendar_month_outlined,
                      text: "18 Oct 2022",
                      fontColor: primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      iconSize: 18,
                      spaceIconWithText: 3,
                    ),
                    SizedBox(width: 8),
                    TextHorizontalWithIcon(
                      icon: Icons.timelapse_sharp,
                      text: "19:00",
                      fontColor: primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      iconSize: 18,
                      spaceIconWithText: 3,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextDefaultStyle(
                      text: "SEAT REGULER",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontColor: greyColor,
                    ),
                    TextDefaultStyle(
                      text: "USD 24 x 1",
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextDefaultStyle(
                      text: "ADMIN FEE",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontColor: greyColor,
                    ),
                    TextDefaultStyle(
                      text: "USD 1 x 1",
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextDefaultStyle(
                      text: "TOTAL AMOUNT",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontColor: greyColor,
                    ),
                    TextDefaultStyle(
                      text: "USD 25.00",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextDefaultStyle(
                      text: "BOOKING NUMBER",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontColor: greyColor,
                    ),
                    Row(
                      children: const [
                        TextDefaultStyle(
                          text: "776476467276",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        SizedBox(width: 2),
                        Icon(
                          Icons.copy,
                          color: primaryColor,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                BarcodeWidget(
                  barcode: Barcode.code128(escapes: true),
                  data: "57874348383298432",
                  width: screenWidth,
                  height: 80,
                  drawText: false,
                ),
                const SizedBox(height: 10),
                const Center(
                  child: TextDefaultStyle(
                    text: "57874348383298432",
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontColor: greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
