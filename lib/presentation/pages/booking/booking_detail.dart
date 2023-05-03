import 'package:flutter/material.dart';

import '../../../config/theme/colors_config.dart';
import '../../../config/theme/size_config.dart';
import '../../widgets/box_widget.dart';
import '../../widgets/form/button_widget.dart';
import '../../widgets/slide_button.dart';
import '../../widgets/text_widget.dart';
import 'booking_complete.dart';
import 'booking_detail_body.dart';
import 'booking_payment.dart';

class BookingDetailPage extends StatefulWidget {
  const BookingDetailPage({super.key});

  @override
  State<BookingDetailPage> createState() => _BookingDetailPage();
}

class _BookingDetailPage extends State<BookingDetailPage> {
  int currentProgress = 0;
  var onProgress = [0];
  final List<Widget> bodyBookingDetails = const [
    BookingDetailBody(),
    BookingPayment(),
    BookingComplete(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: defaultColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: defaultColor,
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(20),
                  //     bottomRight: Radius.circular(20)),
                ),
                padding: const EdgeInsets.only(
                    left: paddingXXL, right: paddingXXL, top: 20, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            prevProgress();
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: primaryColor,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 40),
                        const TextSubTitleStyle(text: 'Booking Details'),
                      ],
                    ),
                    const SizedBox(height: 35),
                    Center(
                      child: SizedBox(
                        width: screenWidth - 40,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                SizedBox(
                                  width: screenWidth - 80,
                                  height: 30,
                                  child: Divider(
                                    color: greyColor.withOpacity(0.3),
                                    thickness: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                SizedBox(
                                  width: currentProgress == 0
                                      ? 0
                                      : (currentProgress == 2
                                          ? screenWidth - 80
                                          : (screenWidth - 80) / 2),
                                  height: 30,
                                  child: const Divider(
                                    color: primaryColor60,
                                    thickness: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BoxSizeWidget(
                                      boxWidth: 20,
                                      boxHeight: 20,
                                      boxBgColor: currentProgress == 0
                                          ? defaultColor
                                          : primaryColor,
                                      boxRadius: 20,
                                      boxBorderColor: primaryColor,
                                      boxBorderWidth:
                                          currentProgress > 0 ? 0 : 5,
                                      boxPaddingHorizontal:
                                          currentProgress > 0 ? 5 : 0,
                                      boxPaddingVertical:
                                          currentProgress > 0 ? 5 : 0,
                                      child: const Icon(
                                        Icons.check,
                                        size: 20,
                                        color: defaultColor,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const TextDefaultStyle(
                                      text: 'Booking',
                                      fontColor: primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BoxSizeWidget(
                                      boxWidth: 20,
                                      boxHeight: 20,
                                      boxBgColor: currentProgress < 2
                                          ? defaultColor
                                          : primaryColor,
                                      boxRadius: 20,
                                      boxBorderColor: currentProgress < 1
                                          ? greyColor
                                          : primaryColor,
                                      boxBorderWidth:
                                          currentProgress > 1 ? 0 : 5,
                                      boxPaddingHorizontal:
                                          currentProgress > 1 ? 5 : 0,
                                      boxPaddingVertical:
                                          currentProgress > 1 ? 5 : 0,
                                      child: const Icon(
                                        Icons.check,
                                        size: 20,
                                        color: defaultColor,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text('Payment')
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BoxSizeWidget(
                                      boxWidth: 20,
                                      boxHeight: 20,
                                      boxBgColor: currentProgress < 2
                                          ? defaultColor
                                          : primaryColor,
                                      boxRadius: 20,
                                      boxBorderColor: currentProgress < 2
                                          ? greyColor
                                          : primaryColor,
                                      boxBorderWidth:
                                          currentProgress > 1 ? 0 : 5,
                                      boxPaddingHorizontal:
                                          currentProgress > 1 ? 5 : 0,
                                      boxPaddingVertical:
                                          currentProgress > 1 ? 5 : 0,
                                      child: const Icon(
                                        Icons.check,
                                        size: 20,
                                        color: defaultColor,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text('Complete')
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Row(
              //   children: [
              //     ButtonFlexibleCustom(
              //       buttonAct: () {
              //         prevProgress();
              //       },
              //       buttonText: 'Prev',
              //       fontSize: 14,
              //       bgColor: primaryColor,
              //       txtColor: defaultColor,
              //       paddingVertical: 8,
              //       paddingHorizontal: 15,
              //       borderRadius: 15,
              //       fontWeight: FontWeight.w500,
              //     ),
              //     ButtonFlexibleCustom(
              //       buttonAct: () {
              //         nextProgress();
              //       },
              //       buttonText: 'Next',
              //       fontSize: 14,
              //       bgColor: primaryColor,
              //       txtColor: defaultColor,
              //       paddingVertical: 8,
              //       paddingHorizontal: 15,
              //       borderRadius: 15,
              //       fontWeight: FontWeight.w500,
              //     ),
              //   ],
              // ),
              Container(
                child: bodyBookingDetails[currentProgress],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 4,
        height: 70,
        color: defaultColor,
        child: Container(
          padding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: paddingXXL),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      TextDefaultStyle(
                        text: "SUBTOTAL",
                        fontColor: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.expand_more,
                        size: 24,
                        color: primaryColor,
                      )
                    ],
                  ),
                  const TextTitleStyle(
                    text: "\$25",
                  ),
                ],
              ),
              // ButtonFlexibleCustom(
              //   buttonAct: () {
              //     nextProgress();
              //   },
              //   buttonText: "Slide to Book",
              //   fontSize: 14,
              //   bgColor: primaryColor,
              //   txtColor: defaultColor,
              //   paddingVertical: 8,
              //   paddingHorizontal: 15,
              //   borderRadius: 15,
              //   fontWeight: FontWeight.w500,
              // ),
              SizedBox(
                child: currentProgress == 0
                    ? SliderButtonWidget(
                        action: () {
                          nextProgress();
                        },
                        height: 40,
                        width: 150,
                        backgroundColor: primaryColor,
                        label: const Text(
                          "Slide to Book",
                          style: TextStyle(
                              color: textSecondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        icon: const Icon(
                          Icons.chevron_right,
                          color: textSecondaryColor,
                        ),
                      )
                    : ButtonFlexibleWithSizeCustom(
                        height: 40,
                        width: 150,
                        buttonAct: () {
                          showModal(context);
                        },
                        buttonText: 'Process Payment',
                        fontSize: 14,
                        bgColor: primaryColor,
                        txtColor: defaultColor,
                        borderRadius: 20,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void prevProgress() {
    if (!mounted) return;
    setState(() {
      if (currentProgress == 0) {
        return;
      }
      currentProgress = currentProgress - 1;
    });
  }

  void nextProgress() {
    if (!mounted) return;
    setState(() {
      if (currentProgress == 2) {
        return;
      }
      currentProgress = currentProgress + 1;
    });
  }
}
