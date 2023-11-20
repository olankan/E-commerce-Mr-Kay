import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_kay_ui/constants/app_colors.dart';
import 'package:mr_kay_ui/presentation/dashboard/Reusable_Widgets/Reusable_card.dart';
import 'package:mr_kay_ui/presentation/dashboard/Widgets/orderTimeLine.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderProgress extends StatelessWidget {
  const OrderProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cardBg3,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                children: [
                  ReusableCard(
                    height: 50.h,
                    width: 50.w,
                    elevation: 0,
                    borderRadius: BorderRadius.circular(20),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65.w,
                  ),
                  Text(
                    'Recent Shipping',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  ReusableCard(
                    height: 120.h,
                    elevation: 0,
                    width: 200.w,
                    child: Center(
                      child: Text(
                        'Image',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 180.w,
                        child: Text(
                          'Perfect Situation Long Sofa-bed.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        '\$2215.99',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      )
                    ],
                  )
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          OrderTimeline(
                              height: 80.h,
                              width: 20.w,
                              direction: TimelineAxis.vertical,
                              isFirst: false,
                              isLast: false,
                              indicatorColor: AppColor.primaryColor),
                          OrderTimeline(
                            width: 30.w,
                            height: 0.h,
                            direction: TimelineAxis.vertical,
                            isFirst: false,
                            isLast: false,
                            indicatorColor: AppColor.primaryColor,
                          ),
                          OrderTimeline(
                            width: 30.w,
                            height: 185.h,
                            direction: TimelineAxis.vertical,
                            isFirst: false,
                            isLast: false,
                            indicatorColor: AppColor.primaryColor,
                          ),
                          OrderTimeline(
                            width: 30.w,
                            height: 185.h,
                            direction: TimelineAxis.vertical,
                            isFirst: false,
                            isLast: false,
                            color: AppColor.greyedOut,
                            indicatorColor: AppColor.greyedOut,
                          ),
                          OrderTimeline(
                            width: 30.w,
                            height: 175.h,
                            direction: TimelineAxis.vertical,
                            isFirst: false,
                            isLast: true,
                            color: AppColor.greyedOut,
                            indicatorColor: AppColor.greyedOut,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        ShipmentStatusInfo(
                          shipmentStatus: 'Ordered',
                          shipmentProgressDate: 'November 20, 2023',
                        ),
                        SizedBox(
                          height: 95.h,
                        ),
                        ShipmentStatusInfo(
                          shipmentStatus: 'Packed',
                          shipmentProgressDate: 'November 26, 2023',
                        ),
                        SizedBox(
                          height: 145.h,
                        ),
                        ShipmentStatusInfo(
                          shipmentStatus: 'Shipped',
                          shipmentProgressDate: 'December 3, 2023',
                        ),
                        SizedBox(
                          height: 140.h,
                        ),
                        ShipmentStatusInfo(
                          shipmentStatus: 'Delivered',
                          shipmentProgressDate: 'December 10, 2023',
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShipmentStatusInfo extends StatelessWidget {
  const ShipmentStatusInfo({
    super.key,
    required this.shipmentStatus,
    required this.shipmentProgressDate,
  });

  final String shipmentStatus;
  final String shipmentProgressDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          shipmentStatus,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          shipmentProgressDate,
          style: TextStyle(
            color: AppColor.greyedOut,
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
