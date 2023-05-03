import 'package:flutter/material.dart';
import '../../../config/theme/colors_config.dart';
import '../../../config/theme/size_config.dart';

class ButtonFlexibleCustom extends StatelessWidget {
  final String buttonText;
  final VoidCallback? buttonAct;
  final Color? bgColor;
  final Color? txtColor;
  final double paddingVertical;
  final double paddingHorizontal;
  final double? fontSize;
  final double borderRadius;
  final FontWeight fontWeight;

  const ButtonFlexibleCustom(
      {Key? key,
      required this.buttonText,
      this.buttonAct,
      this.txtColor,
      this.bgColor,
      this.paddingHorizontal = 1,
      this.paddingVertical = 1,
      this.fontSize,
      this.borderRadius = 0,
      this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextButton(
        onPressed: buttonAct,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero, minimumSize: const Size(20, 20)),
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
          decoration: BoxDecoration(
              color: bgColor ?? primaryColor,
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: fontSize ?? fSizeDefault,
              fontWeight: fontWeight,
              color: txtColor ?? defaultColor,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonGradientWidget extends StatelessWidget {
  final String buttonText;
  final void buttonAct;

  const ButtonGradientWidget(this.buttonText, this.buttonAct, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(radiusXm),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
                child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[darkButtonColor1, darkButtonColor2])),
            )),
            TextButton(
                onPressed: (() => buttonAct),
                style: TextButton.styleFrom(
                    foregroundColor: textSecondaryColor,
                    padding: const EdgeInsets.all(paddingXXm),
                    textStyle: const TextStyle(fontSize: fSizeDefault)),
                child: Text(buttonText))
          ],
        ));
  }
}

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  Color? textColor;
  String buttonText;
  Color? borderColor;
  double buttonPadding;

  CustomButton({
    required this.onTap,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    required this.buttonText,
    this.buttonPadding = 5,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
          color: buttonColor ?? primaryColor,
          border: Border.all(color: borderColor ?? primaryColor),
          borderRadius: BorderRadius.circular(borderRadius ?? 0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(buttonPadding),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor ?? textSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonFlexibleWithSizeCustom extends StatelessWidget {
  final String buttonText;
  final VoidCallback? buttonAct;
  final Color? bgColor;
  final Color? txtColor;
  final double paddingVertical;
  final double paddingHorizontal;
  final double? fontSize;
  final double borderRadius;
  final FontWeight fontWeight;
  final double? width;
  final double? height;

  const ButtonFlexibleWithSizeCustom(
      {Key? key,
      required this.buttonText,
      this.buttonAct,
      this.txtColor,
      this.bgColor,
      this.width,
      this.height,
      this.paddingHorizontal = 1,
      this.paddingVertical = 1,
      this.fontSize,
      this.borderRadius = 0,
      this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextButton(
        onPressed: buttonAct,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero, minimumSize: const Size(20, 20)),
        child: Container(
          height: height,
          width: width,
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
          decoration: BoxDecoration(
              color: bgColor ?? primaryColor,
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: fontSize ?? fSizeDefault,
                  fontWeight: fontWeight,
                  color: txtColor ?? defaultColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
