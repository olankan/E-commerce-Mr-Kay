// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_kay_ui/constants/app_colors.dart';
import 'package:mr_kay_ui/presentation/dashboard/Reusable_Widgets/Reusable_card.dart';
import 'package:mr_kay_ui/presentation/dashboard/Widgets/orderTimeLine.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CurrentShipping extends StatelessWidget {
  const CurrentShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
            color: AppColor.cardBg2,
      height: 200.h,
      width: 390.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Current Shipping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 100.w,
              ),
              ReusableCard(
                  height: 30,
                  width: 70,
                  elevation: 0,
                  color: AppColor.primaryColor,
                  child: Center(
                      child: Text(
                    'Transit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  )))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 30, bottom: 10).r,
            child: Text(
              'ID: GYD9809346',
              style: TextStyle(
                color: AppColor.greyedOut2,
                fontSize: 17.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Row(
            children: [
              OrderTimeline(
                  isFirst: true,
                  isLast: false,
                  indicatorColor: AppColor.primaryColor),
              OrderTimeline(
                isFirst: false,
                isLast: false,
                indicatorColor: AppColor.primaryColor,
              ),
              OrderTimeline(
                isFirst: false,
                isLast: false,
                color: AppColor.greyedOut,
                indicatorColor: AppColor.greyedOut,
              ),
              OrderTimeline(
                isFirst: false,
                isLast: true,
                color: AppColor.greyedOut,
                indicatorColor: AppColor.greyedOut,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '20 November, 2023',
                style: TextStyle(
                  color: AppColor.greyedOut,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Estimate Delivery: 14 March, 2023',
                style: TextStyle(
                  color: AppColor.greyedOut,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'South Dakota',
                style: TextStyle(
                  color: AppColor.greyedOut2,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 60.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 0).r,
                child: Text(
                  'Maine',
                  style: TextStyle(
                    color: AppColor.greyedOut2,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
