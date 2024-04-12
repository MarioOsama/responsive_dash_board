import 'package:flutter/material.dart';

class OverViewDotIndicator extends StatelessWidget {
  final bool isActive;
  const OverViewDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? const Color(0xFF4EB7F2) : const Color(0xFFE7E7E7),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          )),
    );
  }
}
