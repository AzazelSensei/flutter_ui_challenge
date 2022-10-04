import 'package:flutter/material.dart';

class MiniButton extends StatelessWidget {
  const MiniButton({
    Key? key,
    required this.icon,
    this.onPressed,
    this.hasNotification = false,
  }) : super(key: key);

  final bool hasNotification;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Stack(
            children: [
              Icon(icon, color: Colors.white),
              if (hasNotification)
                const Positioned(
                  right: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
