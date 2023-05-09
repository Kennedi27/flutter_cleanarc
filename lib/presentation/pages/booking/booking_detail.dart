import 'package:flutter/material.dart';

import '../../../config/theme/colors_config.dart';
import '../../../config/theme/size_config.dart';
import '../../widgets/box_widget.dart';
import '../../widgets/form/button_widget.dart';
import '../../widgets/form/text_input.dart';
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
                        TextSubTitleStyle(
                            text: currentProgress == 0
                                ? 'Booking Details'
                                : 'Payment'),
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
      bottomNavigationBar: currentProgress != 2
          ? BottomAppBar(
              elevation: 4,
              height: 70,
              color: defaultColor,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 8, horizontal: paddingXXL),
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
                                showModalAuth(context);
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
            )
          : null,
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

  void showModalAuth(BuildContext context, {bool withPasscode = false}) {
    double screenWidth = MediaQuery.of(context).size.width;
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return BoxSizeWidget(
          boxPaddingHorizontal: 20,
          boxPaddingVertical: 20,
          minHeight: 200,
          boxWidth: screenWidth,
          hideOverflow: false,
          boxRadiusTop: 15,
          withShadow: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: !withPasscode
                ? <Widget>[
                    const TextTitleStyle(
                      text: "Use Biometic to Process the Payment",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Icon(
                      Icons.fingerprint,
                      color: primaryColor,
                      size: 80,
                    ),
                    const SizedBox(height: 20),
                    ButtonFlexibleWithSizeCustom(
                      paddingVertical: 15,
                      width: screenWidth,
                      buttonAct: () {
                        Navigator.pop(context);
                        // showModalAuth(context, withPasscode: true);
                        nextProgress();
                      },
                      borderColor: greyColor,
                      buttonText: "Use Passcode Instead",
                      borderWidth: 0.5,
                      fontSize: 14,
                      bgColor: defaultColor,
                      txtColor: primaryColor,
                      borderRadius: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ]
                : <Widget>[
                    const TextTitleStyle(
                      text: "Use Passcode to Process the Payment",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        TextInputCustom(
                          inputHeight: 40,
                          inputWidth: 40,
                          inputBorderRadius: 5,
                          inputBgColor: defaultColor,
                          inputBorderColor: greyColor,
                          inputBorderWidth: 0.5,
                          inputKeyboardType: TextInputType.number,
                          inputTextAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ButtonFlexibleWithSizeCustom(
                      paddingVertical: 15,
                      width: screenWidth,
                      buttonAct: () {
                        Navigator.pop(context);
                        showModalAuth(context, withPasscode: false);
                      },
                      borderColor: greyColor,
                      buttonText: "Use Biometric Instead",
                      borderWidth: 0.5,
                      fontSize: 14,
                      bgColor: defaultColor,
                      txtColor: primaryColor,
                      borderRadius: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
          ),
        );
      },
    );
  }
}

Future<T?> showModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = false,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool useSafeArea = false,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  Offset? anchorPoint,
}) {
  assert(debugCheckHasMediaQuery(context));
  assert(debugCheckHasMaterialLocalizations(context));

  final NavigatorState navigator =
      Navigator.of(context, rootNavigator: useRootNavigator);
  return navigator.push(
    ModalBottomSheetRoute<T>(
      builder: builder,
      capturedThemes:
          InheritedTheme.capture(from: context, to: navigator.context),
      isScrollControlled: isScrollControlled,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      isDismissible: isDismissible,
      modalBarrierColor:
          barrierColor ?? Theme.of(context).bottomSheetTheme.modalBarrierColor,
      enableDrag: enableDrag,
      settings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
      useSafeArea: useSafeArea,
    ),
  );
}
