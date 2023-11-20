// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mr_kay_ui/constants/app_colors.dart';

class ReusableCard extends StatelessWidget {
  final double height;
  final double width;
  final double? elevation;
  final Widget? child;
  final Color? color;
  final BorderRadius? borderRadius;

  const ReusableCard({
    super.key,
    required this.height,
    required this.width,
    this.elevation,
    this.color,
    required this.child,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation ?? 20,
      borderRadius: borderRadius ?? BorderRadius.circular(28),
      color: color ?? AppColor.cardBg1,
      child: Container(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}


// Container(
//       height: height,
//       width: width,
//       decoration: BoxDecoration(boxShadow: [
//         BoxShadow(
//             color: Colors.black,
//             spreadRadius: 2,
//             blurRadius: 10,
//             offset: Offset(0, 0))
//       ]),
//     );