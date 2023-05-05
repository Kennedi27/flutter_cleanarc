import 'package:clean_arc/config/theme/colors_config.dart';
import 'package:flutter/material.dart';
import '../../config/theme/size_config.dart';

class BoxSizeWidget extends StatefulWidget {
  final Widget? child;
  final double boxRadius;
  final double? boxRadiusTop;
  final double? boxRadiusBottom;
  final Color boxBgColor;
  final Color boxBorderColor;
  final double boxBorderWidth;
  final double boxPaddingVertical;
  final double boxPaddingHorizontal;
  final double? boxWidth;
  final double? boxHeight;
  final bool hideOverflow;
  final bool withShadow;
  final double minHeight;

  // ignore: prefer_const_constructors_in_immutables
  BoxSizeWidget(
      {Key? key,
      this.child,
      this.boxWidth,
      this.boxHeight,
      this.boxRadiusTop,
      this.boxRadiusBottom,
      this.minHeight = boxesDefault,
      this.hideOverflow = false,
      this.withShadow = false,
      this.boxBgColor = defaultColor,
      this.boxBorderColor = defaultColor,
      this.boxBorderWidth = 0,
      this.boxRadius = 0,
      this.boxPaddingHorizontal = 1.0,
      this.boxPaddingVertical = 1.0})
      : super(key: key);

  @override
  State<BoxSizeWidget> createState() => _BoxSizeWidget();
}

class _BoxSizeWidget extends State<BoxSizeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: widget.hideOverflow ? Clip.hardEdge : Clip.none,
      padding: EdgeInsets.symmetric(
          vertical: widget.boxPaddingVertical,
          horizontal: widget.boxPaddingHorizontal),
      decoration: BoxDecoration(
        color: widget.boxBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(widget.boxRadiusTop ?? widget.boxRadius),
          topRight: Radius.circular(widget.boxRadiusTop ?? widget.boxRadius),
          bottomLeft:
              Radius.circular(widget.boxRadiusBottom ?? widget.boxRadius),
          bottomRight:
              Radius.circular(widget.boxRadiusBottom ?? widget.boxRadius),
        ),
        border: Border.all(
          color: widget.boxBorderColor,
          width: widget.boxBorderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: greyColor,
            offset: const Offset(0.0, 0.0), //(x,y)
            blurRadius: widget.withShadow ? 6.0 : 0,
          ),
        ],
      ),
      child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: widget.minHeight, minWidth: boxesDefault),
          child: SizedBox(
            height: widget.boxHeight,
            width: widget.boxWidth,
            child: widget.child,
          )),
    );
  }
}
