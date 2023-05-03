import 'package:flutter/material.dart';

import '../../config/theme/colors_config.dart';
import '../../config/theme/size_config.dart';

class TextDefaultStyle extends StatelessWidget {
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;

  const TextDefaultStyle(
      {Key? key,
      required this.text,
      this.fontColor = textPrimaryColor,
      this.fontWeight = FontWeight.normal,
      this.fontSize = fSizeDefault})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}

class TextTitleStyle extends StatelessWidget {
  final String text;
  final Color fontColor;

  const TextTitleStyle(
      {Key? key, required this.text, this.fontColor = textPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fSizeTitle,
        fontWeight: FontWeight.bold,
        color: fontColor,
      ),
    );
  }
}

class TextSubTitleStyle extends StatelessWidget {
  final String text;
  final Color fontColor;

  const TextSubTitleStyle(
      {Key? key, required this.text, this.fontColor = textPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fSizeSubTitle,
        fontWeight: FontWeight.bold,
        color: fontColor,
      ),
    );
  }
}

class TextSmallTitleStyle extends StatelessWidget {
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;

  const TextSmallTitleStyle(
      {Key? key,
      required this.text,
      this.fontColor = textPrimaryColor,
      this.fontWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fSizeSmallTitle,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}

class TextWithTitleStyle extends StatelessWidget {
  final VoidCallback? onTap;

  final Widget child;

  const TextWithTitleStyle({Key? key, this.onTap, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: child,
    );
    // TextButton(
    //   onPressed: buttonAct,
    //   child: child,
    //   style: TextButton.styleFrom(
    //       padding: EdgeInsets.zero, minimumSize: const Size(5, 5)),
    // );
  }
}

class TextHorizontalWithIcon extends StatelessWidget {
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final IconData? icon;
  final double iconSize;
  final Color iconColor;
  final double spaceIconWithText;

  const TextHorizontalWithIcon(
      {Key? key,
      required this.text,
      this.icon,
      this.iconSize = 20,
      this.spaceIconWithText = 5,
      this.iconColor = secondaryColor,
      this.fontColor = textPrimaryColor,
      this.fontWeight = FontWeight.normal,
      this.fontSize = fSizeDefault})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(width: spaceIconWithText),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: fontColor,
          ),
        ),
      ],
    );
  }
}

class TextWithSummary extends StatelessWidget {
  final Widget textTitle;
  final bool hideTextBody;
  final Widget? summary;
  final VoidCallback? showHideSummary;

  const TextWithSummary(
      {Key? key,
      required this.textTitle,
      this.hideTextBody = true,
      this.showHideSummary,
      this.summary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: showHideSummary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textTitle,
              Icon(
                hideTextBody
                    ? Icons.chevron_right_outlined
                    : Icons.expand_more_outlined,
                size: 20,
                color: greyColor,
              )
            ],
          ),
        ),
        SizedBox(child: hideTextBody ? null : summary),
      ],
    );
  }
}
