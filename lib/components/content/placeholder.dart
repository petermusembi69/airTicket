import 'dart:math';

import 'package:flutter/material.dart';

class PlaceholderCardShort extends StatelessWidget {
  final double width;
  final double height;
  final double cornerRadius;
  final Color color;
  final Color backgroundColor;

  const PlaceholderCardShort({Key key, this.cornerRadius = 4, this.color, this.backgroundColor, this.width = 400, this.height = 90 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var r = Random();
    var fgColor = color ?? Color(0xfff2f2f2);
    double lineHeight = 16;
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: backgroundColor ?? Colors.white,
      ),
      padding: EdgeInsets.all(26),
      child: Stack(
        children: <Widget>[
          //Circle image
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: fgColor),
              height: 32,
              width: 32,
            ),
          ),

          //Content Line
          Container(margin: EdgeInsets.only(right: 60.0 + r.nextInt(60)), color: fgColor, height: lineHeight ),

          //Content Line
          Container(margin: EdgeInsets.only(right: 80.0 + r.nextInt(120), top: lineHeight + 6), color: fgColor, height: lineHeight ),

        ],
      ),
    );
  }
}


class PlaceholderImageWithText extends StatelessWidget {
  final double width;
  final double height;
  final double cornerRadius;
  final Color color;
  final Color backgroundColor;

  const PlaceholderImageWithText({Key key, this.cornerRadius = 0, this.color, this.backgroundColor, this.width = 100, this.height = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fgColor = color ?? Color(0xfff2f2f2);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: backgroundColor ?? Colors.white,
      ),
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Expanded(child: Container(color: fgColor)),
          Stack(
            children: <Widget>[
              Container(color: fgColor, height: 16, margin: EdgeInsets.only(top: 12, left: 10, right: 70)),
              Container(color: fgColor, height: 10, margin: EdgeInsets.only(top: 40, left: 10, right: 30)),
              Container(color: fgColor, height: 10, margin: EdgeInsets.only(top: 56, left: 10, right: 10)),
              Container(color: fgColor, height: 10, margin: EdgeInsets.only(top: 72, left: 10, right: 60, bottom: 12)),
            ],
          ),

        ],
      ),
    );
  }
}


class PlaceholderCardTall extends StatelessWidget {

  final double width;
  final double height;
  final double cornerRadius;
  final Color color;
  final Color backgroundColor;

  const PlaceholderCardTall({Key key, this.cornerRadius = 4, this.color, this.backgroundColor, this.width = 400, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var r = Random();
    var fgColor = color ?? Color(0xfff2f2f2);
    double lineHeight = 14;
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: backgroundColor ?? Colors.white,
      ),
      padding: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          //Circle image
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(999), color: fgColor),
            height: 45,
            width: 45,
          ),
          //Title
          Container(margin: EdgeInsets.only(left: 65, top: 10), color: fgColor, height: lineHeight * 1.2, width: 100.0 + r.nextInt(100)),

          //Content Line
          Container(margin: EdgeInsets.only(top: 60, right: 10.0 + r.nextInt(60)), color: fgColor, height: lineHeight),

          //Content Line
          Container(margin: EdgeInsets.only(top: 85, right: 10.0 + r.nextInt(60)), color: fgColor, height: lineHeight),

          //Content Line
          Container(margin: EdgeInsets.only(top: 110, right: 10.0 + r.nextInt(60)), color: fgColor, height: lineHeight),

          //Content Line
          Container(margin: EdgeInsets.only(top: 135, right: 60.0 + r.nextInt(60)), color: fgColor, height: lineHeight),
        ],
      ),
    );
  }
}
