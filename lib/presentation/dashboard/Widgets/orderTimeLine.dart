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
    this.direction,
    this.height,
    this.width,
  });

  final bool isFirst;
  final bool isLast;
  final Color? color;
  final Color indicatorColor;
  final TimelineAxis? direction;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    
      height: height ?? 20.h,
      width: width ?? 97.h,
      child: TimelineTile(
        indicatorStyle: IndicatorStyle(color: indicatorColor),
        axis: direction ?? TimelineAxis.horizontal,
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: color ?? AppColor.primaryColor,
        ),
      ),
    );
  }
}
