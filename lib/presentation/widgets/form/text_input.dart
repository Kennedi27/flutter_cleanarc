import 'package:clean_arc/config/theme/colors_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../config/theme/size_config.dart';

class TextInputCustom extends StatefulWidget {
  // String
  final String? inputLabel;
  final String? inputPlaceHolder;
  final String Function(String?)? inputValidator;
  // Double
  final double inputWidth;
  final double inputHeight;
  final double inputBorderRadius;
  final double inputBorderWidth;
  final int? inputLength;
  final double? inputFontSize;
  // Icon
  final Icon? inputLeftIcon;
  final Icon? inputRightIcon;
  // Color
  final Color inputBgColor;
  final Color inputFocusedBorderColor;
  final Color inputBorderColor;
  final Color? inputPlaceHolderColor;
  // Other
  final TextEditingController? inputController;
  final FocusNode? inputFocusNode;
  final VoidCallback? inputOnTap;
  final TextInputType? inputKeyboardType;
  final void Function(String)? onChanged;
  final TextAlign inputTextAlign;

  final bool isPassword;
  final bool obscureText;
  final bool readOnly;

  const TextInputCustom({
    Key? key,
    this.inputLabel,
    this.inputPlaceHolder,
    this.inputValidator,
    required this.inputWidth,
    required this.inputHeight,
    this.inputBorderRadius = 0,
    this.inputBorderWidth = 1.5,
    this.inputFontSize,
    this.inputLength,
    this.inputLeftIcon,
    this.inputRightIcon,
    this.inputBgColor = defaultColor,
    this.inputFocusedBorderColor = primaryColor,
    this.inputBorderColor = defaultColor,
    this.inputPlaceHolderColor,
    this.inputController,
    this.inputFocusNode,
    this.inputOnTap,
    this.inputKeyboardType,
    this.inputTextAlign = TextAlign.start,
    this.onChanged,
    this.isPassword = false,
    this.obscureText = false,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<TextInputCustom> createState() => _TextInputCustom();
}

class _TextInputCustom extends State<TextInputCustom> {
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    void toggleText() {
      hidepass = widget.obscureText == hidepass ? hidepass : hidepass;
      setState(() {
        hidepass = !hidepass;
      });
    }

    return SizedBox(
      width: widget.inputWidth,
      height: widget.inputHeight,
      child: TextFormField(
        onChanged: widget.onChanged,
        controller: widget.inputController,
        focusNode: widget.inputFocusNode,
        validator: widget.inputValidator,
        onTap: widget.inputOnTap,
        keyboardType: widget.inputKeyboardType,
        style: TextStyle(
            fontWeight: FontWeight.normal, fontSize: widget.inputFontSize),
        obscureText: widget.isPassword ? hidepass : widget.isPassword,
        inputFormatters: [LengthLimitingTextInputFormatter(widget.inputLength)],
        textAlign: widget.inputTextAlign,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          hintText: widget.inputPlaceHolder,
          labelText: widget.inputLabel,
          hintStyle: TextStyle(
              color:
                  widget.inputPlaceHolderColor ?? greyColor.withOpacity(0.6)),
          filled: true,
          fillColor: widget.inputBgColor,
          prefixIcon: widget.inputLeftIcon,
          suffixIcon: !widget.isPassword
              ? widget.inputRightIcon
              : Container(
                  child: hidepass
                      ? IconButton(
                          icon: const Icon(
                            Icons.visibility,
                          ),
                          padding: const EdgeInsets.all(1.0),
                          onPressed: () => toggleText())
                      : IconButton(
                          icon: const Icon(
                            Icons.visibility_off,
                          ),
                          onPressed: () => toggleText()),
                ),
          contentPadding: EdgeInsets.zero,
          labelStyle: TextStyle(
              fontWeight: FontWeight.normal, fontSize: widget.inputFontSize),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.inputBorderRadius),
            borderSide: BorderSide(
              color: widget.inputFocusedBorderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.inputBorderRadius),
            borderSide: BorderSide(
              color: widget.inputBorderColor,
              width: widget.inputBorderWidth,
            ),
          ),
        ),
      ),
    );
  }
}

class TextInputCustomWithLabel extends StatefulWidget {
  // String
  final String inputTopLabel;
  final String? inputLabel;
  final String? inputPlaceHolder;
  final String Function(String?)? inputValidator;
  // Double
  final double inputWidth;
  final double inputHeight;
  final double inputBorderRadius;
  final double inputBorderWidth;
  final int? inputLength;
  final double? inputFontSize;
  // Icon
  final Icon? inputLeftIcon;
  final Icon? inputRightIcon;
  // Color
  final Color inputBgColor;
  final Color inputFocusedBorderColor;
  final Color inputBorderColor;
  // Other
  final TextEditingController? inputController;
  final FocusNode? inputFocusNode;
  final VoidCallback? inputOnTap;
  final TextInputType? inputKeyboardType;
  final void Function(String)? onChanged;
  final TextAlign inputTextAlign;

  final bool isPassword;
  final bool obscureText;
  final bool readOnly;

  const TextInputCustomWithLabel({
    Key? key,
    this.inputLabel,
    this.inputPlaceHolder,
    this.inputValidator,
    required this.inputWidth,
    required this.inputHeight,
    this.inputBorderRadius = 0,
    this.inputBorderWidth = 1.5,
    this.inputFontSize,
    this.inputTopLabel = "",
    this.inputLength,
    this.inputLeftIcon,
    this.inputRightIcon,
    this.inputBgColor = defaultColor,
    this.inputFocusedBorderColor = primaryColor,
    this.inputBorderColor = defaultColor,
    this.inputController,
    this.inputFocusNode,
    this.inputOnTap,
    this.inputKeyboardType,
    this.inputTextAlign = TextAlign.start,
    this.onChanged,
    this.isPassword = false,
    this.obscureText = false,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<TextInputCustomWithLabel> createState() => _TextInputCustomWithLabel();
}

class _TextInputCustomWithLabel extends State<TextInputCustomWithLabel> {
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    void toggleText() {
      hidepass = widget.obscureText == hidepass ? hidepass : hidepass;
      setState(() {
        hidepass = !hidepass;
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputTopLabel,
          style: const TextStyle(
              color: textPrimaryColor, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: marginMd),
        SizedBox(
          width: widget.inputWidth,
          height: widget.inputHeight,
          child: TextFormField(
            onChanged: widget.onChanged,
            controller: widget.inputController,
            focusNode: widget.inputFocusNode,
            validator: widget.inputValidator,
            onTap: widget.inputOnTap,
            keyboardType: widget.inputKeyboardType,
            style: TextStyle(
                fontWeight: FontWeight.normal, fontSize: widget.inputFontSize),
            obscureText: widget.isPassword ? hidepass : widget.isPassword,
            inputFormatters: [
              LengthLimitingTextInputFormatter(widget.inputLength)
            ],
            textAlign: widget.inputTextAlign,
            readOnly: widget.readOnly,
            decoration: InputDecoration(
              hintText: widget.inputPlaceHolder,
              labelText: widget.inputLabel,
              filled: true,
              fillColor: widget.inputBgColor,
              prefixIcon: widget.inputLeftIcon,
              suffixIcon: !widget.isPassword
                  ? widget.inputRightIcon
                  : Container(
                      child: hidepass
                          ? IconButton(
                              icon: const Icon(
                                Icons.visibility,
                              ),
                              padding: const EdgeInsets.all(1.0),
                              onPressed: () => toggleText())
                          : IconButton(
                              icon: const Icon(
                                Icons.visibility_off,
                              ),
                              onPressed: () => toggleText()),
                    ),
              contentPadding: EdgeInsets.zero,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: widget.inputFontSize),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.inputBorderRadius),
                borderSide: BorderSide(
                  color: widget.inputFocusedBorderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.inputBorderRadius),
                borderSide: BorderSide(
                  color: widget.inputBorderColor,
                  width: widget.inputBorderWidth,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TextInputDateTimeCustomWithLabel extends StatefulWidget {
  // String
  final String inputTopLabel;
  final String? inputLabel;
  final String? inputPlaceHolder;
  final String Function(String?)? inputValidator;
  // Double
  final double inputWidth;
  final double inputHeight;
  final double inputBorderRadius;
  final double inputBorderWidth;
  final int? inputLength;
  final double? inputFontSize;
  // Icon
  final Icon? inputLeftIcon;
  final Icon? inputRightIcon;
  // Color
  final Color inputBgColor;
  final Color inputFocusedBorderColor;
  final Color inputBorderColor;
  // Other
  final TextEditingController? inputController;
  final FocusNode? inputFocusNode;
  final VoidCallback? inputOnTap;
  final TextInputType? inputKeyboardType;
  final void Function(String)? onChanged;
  final TextAlign inputTextAlign;

  final bool isPassword;
  final bool obscureText;
  final bool readOnly;

  const TextInputDateTimeCustomWithLabel({
    Key? key,
    this.inputLabel,
    this.inputPlaceHolder,
    this.inputValidator,
    required this.inputWidth,
    required this.inputHeight,
    this.inputBorderRadius = 0,
    this.inputBorderWidth = 1.5,
    this.inputFontSize,
    this.inputTopLabel = "",
    this.inputLength,
    this.inputLeftIcon,
    this.inputRightIcon,
    this.inputBgColor = defaultColor,
    this.inputFocusedBorderColor = primaryColor,
    this.inputBorderColor = defaultColor,
    this.inputController,
    this.inputFocusNode,
    this.inputOnTap,
    this.inputKeyboardType,
    this.inputTextAlign = TextAlign.start,
    this.onChanged,
    this.isPassword = false,
    this.obscureText = false,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<TextInputDateTimeCustomWithLabel> createState() =>
      _TextInputDateTimeCustomWithLabel();
}

class _TextInputDateTimeCustomWithLabel
    extends State<TextInputDateTimeCustomWithLabel> {
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    void toggleText() {
      hidepass = widget.obscureText == hidepass ? hidepass : hidepass;
      setState(() {
        hidepass = !hidepass;
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputTopLabel,
          style: const TextStyle(
              color: textPrimaryColor, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: marginMd),
        SizedBox(
          width: widget.inputWidth,
          height: widget.inputHeight,
          child: TextFormField(
            onChanged: widget.onChanged,
            controller: widget.inputController,
            focusNode: widget.inputFocusNode,
            validator: widget.inputValidator,
            onTap: widget.inputOnTap,
            keyboardType: widget.inputKeyboardType,
            style: TextStyle(
                fontWeight: FontWeight.normal, fontSize: widget.inputFontSize),
            obscureText: widget.isPassword ? hidepass : widget.isPassword,
            inputFormatters: [
              LengthLimitingTextInputFormatter(widget.inputLength)
            ],
            textAlign: widget.inputTextAlign,
            readOnly: widget.readOnly,
            decoration: InputDecoration(
              hintText: widget.inputPlaceHolder,
              labelText: widget.inputLabel,
              filled: true,
              fillColor: widget.inputBgColor,
              prefixIcon: widget.inputLeftIcon,
              suffixIcon: !widget.isPassword
                  ? widget.inputRightIcon
                  : Container(
                      child: hidepass
                          ? IconButton(
                              icon: const Icon(
                                Icons.visibility,
                              ),
                              padding: const EdgeInsets.all(1.0),
                              onPressed: () => toggleText())
                          : IconButton(
                              icon: const Icon(
                                Icons.visibility_off,
                              ),
                              onPressed: () => toggleText()),
                    ),
              contentPadding: EdgeInsets.zero,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: widget.inputFontSize),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.inputBorderRadius),
                borderSide: BorderSide(
                  color: widget.inputFocusedBorderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.inputBorderRadius),
                borderSide: BorderSide(
                  color: widget.inputBorderColor,
                  width: widget.inputBorderWidth,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
