import 'package:flutter/material.dart';

class AppBackgroundContainer extends StatelessWidget {
  final Widget child;
  final double? padding;
  const AppBackgroundContainer({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
