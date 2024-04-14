import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/home/ui/product_home_item.dart';

class ProductHomelist extends StatelessWidget {
  const ProductHomelist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Padding(
        padding:  EdgeInsets.only(left: 6.h),
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) {
          return  Padding(
            padding: EdgeInsets.only(left:16.h),
            child:ProductHomeItem(),
          );
        },),
      ),
    );
  }
}