import 'dart:ui';

import 'package:flutter/widgets.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      this.height,
      this.width,
      required this.child,
      required this.margin});
  final double? height;
  final double? width;
  final Widget child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          color: const Color(0xff435357),
          height: height,
          width: width,
          child: Stack(
            children: [
              effect2,
              effect1,
              BackdropFilter(
                filter: ImageFilter.blur(
                  tileMode: TileMode.mirror,
                  sigmaX: 40.0,
                  sigmaY: 40.0,
                ),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get effect1 => Positioned(
        top: 10,
        left: 10,
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 29, 160, 156).withOpacity(0.6),
          ),
        ),
      );
  Widget get effect2 => Positioned(
        bottom: 10,
        right: 10,
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 224, 34, 0).withOpacity(0.6),
          ),
        ),
      );
}
