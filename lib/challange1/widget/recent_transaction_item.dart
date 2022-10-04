import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/challange1/constant/string_contants.dart';
import 'package:flutter_ui_challenge/challange1/widget/first_description.dart';

class RecentTransactionItem extends StatelessWidget {
  const RecentTransactionItem({
    super.key,
    required this.circleColor,
    required this.name,
    required this.date,
    required this.amount,
  });

  final String name;
  final String date;
  final String amount;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 90,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 1,
          ),
        ),
        shadows: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.5,
            blurRadius: 15,
            offset: const Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: CircleAvatar(
                  backgroundColor: circleColor,
                  radius: 25,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: VideoDescription(
              crossAxisAlignment: CrossAxisAlignment.start,
              fontSize1: 18,
              fontSize2: 14,
              fontWeight: FontWeight.w500,
              text1: name,
              text2: date,
              color1: Colors.black,
              color2: Colors.black87,
            ),
          ),
          VideoDescription(
            crossAxisAlignment: CrossAxisAlignment.end,
            fontSize1: 19,
            fontSize2: 14,
            fontWeight: FontWeight.w700,
            text1: amount,
            text2: StringConstants.figmaType,
            color1: Colors.green,
            color2: Colors.black87,
          ),
        ],
      ),
    );
  }
}
