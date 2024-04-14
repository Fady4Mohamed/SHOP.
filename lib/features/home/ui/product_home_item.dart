import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/home/ui/product_home_item_image.dart';
import 'package:shop/features/home/ui/product_home_item_information.dart';

class ProductHomeItem extends StatelessWidget {
  const ProductHomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ProductHomeItemImage(), ProductHomeItemInformation()],
      ),
    );
  }
}
