// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_kay_ui/constants/app_colors.dart';
import 'package:mr_kay_ui/presentation/dashboard/Reusable_Widgets/Reusable_card.dart';
import 'package:mr_kay_ui/presentation/dashboard/Widgets/current_shipping.dart';
import 'package:mr_kay_ui/presentation/dashboard/Widgets/shipmentTracking.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 250.h,
                width: double.infinity,
                color: AppColor.bgColor,
                child: Column(
                  children: [
                    SizedBox(height: 70.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColor.black,
                                radius: 30.r,
                                // child: Image.asset('name'),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'Hello, Jerome Bell',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Text(
                                    'Change Profile',
                                    style: TextStyle(
                                      color: AppColor.greyedOut,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 70.w,
                        ),
                        CircleAvatar(
                          backgroundColor: AppColor.black,
                          radius: 30.r,
                          child: Icon(
                            Icons.grid_view_rounded,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   SizedBox(height: 70.h,),
                CurrentShipping(),
                
                SizedBox(
                  height: 20.h,
                ),
                ShipmentTracking(),
                SizedBox(
                  height: 20.h,
                ),
                ReusableCard(
                  height: 150.h,
                  width: 390.w,
                  child: null,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
