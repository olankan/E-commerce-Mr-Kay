import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_kay_ui/constants/app_colors.dart';
import 'package:mr_kay_ui/presentation/dashboard/Reusable_Widgets/Reusable_card.dart';
import 'package:mr_kay_ui/presentation/order_progress/order_progress.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      height: 170.h,
      width: 390.w,
      color: AppColor.cardBg2,
      child: Column(
        children: [
          Center(
            child: ReusableCard(
              height: 15.h,
              width: 80.w,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: AppColor.black,
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 8.0, left: 12, right: 12),
                child: ReusableCard(
                  color: AppColor.cardBg2,
                  height: 3.h,
                  width: 45.w,
                  child: null,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Recent Shipping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 120.w,
              ),
              Row(
                children: [
                  Text(
                    'Show all',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColor.primaryColor,
                    size: 13.r,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderProgress(),
                ),
               );
            },
            child: ReusableCard(
                height: 80.h,
                width: 360.w,
                elevation: 0,
                color: AppColor.primaryColor,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'ID: GYD9809346',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      ReusableCard(
                        height: 30,
                        width: 70,
                        elevation: 0,
                        color: Color(0xffC77159),
                        child: Center(
                          child: Text(
                            'Transit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
