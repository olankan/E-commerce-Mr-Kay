import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_kay_ui/constants/app_colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderTimeline extends StatelessWidget {
  const OrderTimeline({
    super.key,
    required this.isFirst,
    required this.isLast,
    this.color,
    required this.indicatorColor,
  });

  final bool isFirst;
  final bool isLast;
  final Color? color;
  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 97.h,
      child: TimelineTile(
        indicatorStyle: IndicatorStyle(color: indicatorColor),
        axis: TimelineAxis.horizontal,
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: color ?? AppColor.primaryColor,
        ),
      ),
    );
  }
}
