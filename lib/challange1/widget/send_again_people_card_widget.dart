import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class SendAgainPeopleCard extends StatelessWidget {
  const SendAgainPeopleCard({
    super.key,
    required this.name,
    required this.amount,
  });

  final String name;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 180),
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 40,
            cornerSmoothing: 1,
          ),
        ),
      ),
      child: ListTile(
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading:
            const CircleAvatar(backgroundColor: Colors.black54, radius: 20),
        subtitle: Text(
          amount,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
