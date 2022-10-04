import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({
    super.key,
    required this.text1,
    required this.text2,
    required this.crossAxisAlignment,
    required this.fontSize1,
    required this.fontSize2,
    required this.color1,
    required this.color2,
    required this.fontWeight,
  });

  final String text1;
  final String text2;
  final double fontSize1;
  final double fontSize2;
  final Color color1;
  final Color color2;
  final FontWeight fontWeight;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              text1,
              style: TextStyle(
                fontWeight: fontWeight,
                fontSize: fontSize1,
                color: color1,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              text2,
              style: TextStyle(
                fontSize: fontSize2,
                color: color2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
