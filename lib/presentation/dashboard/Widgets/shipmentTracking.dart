import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_kay_ui/constants/app_colors.dart';
import 'package:mr_kay_ui/presentation/dashboard/Reusable_Widgets/Reusable_card.dart';

class ShipmentTracking extends StatelessWidget {
  const ShipmentTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: AppColor.cardBg2,
      height: 300.h,
      width: 390.w,
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Shipment Tracking',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 90.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 0).r,
                child: Text(
                  'Shipment Rate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 28.h,
          ),
          ReusableCard(
              height: 220.h,
              width: 360.w,
              color: AppColor.cardBg1,
              elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 7).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Track Shipment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: ReusableCard(
                            borderRadius: BorderRadius.circular(15),
                            height: 50.h,
                            width: 340.w,
                            color: AppColor.cardBg3,
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 18.0,
                                top: 18,
                              ).r,
                              child: Text(
                                'Enter Your Shipment Code',
                                style: TextStyle(
                                  color: AppColor.greyedOut,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: ReusableCard(
                            borderRadius: BorderRadius.circular(15),
                            height: 50.h,
                            width: 340.w,
                            color: AppColor.cardBg3,
                            elevation: 0,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Select Your Services',
                                    style: TextStyle(
                                      color: AppColor.greyedOut,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 110.w,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: AppColor.greyedOut,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: ReusableCard(
                                height: 35,
                                width: 100,
                                elevation: 0,
                                color: AppColor.primaryColor,
                                child: Center(
                                    child: Text(
                                  'Track Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ))),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
