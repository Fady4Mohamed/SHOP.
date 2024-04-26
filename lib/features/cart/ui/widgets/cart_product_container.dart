
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_data.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_iImage.dart';

class CartProductcontainer extends StatelessWidget {
  const CartProductcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height:80.h,
      decoration: BoxDecoration(
        boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3), // Color of the shadow
          spreadRadius: 2, // Spread radius
          blurRadius: 20,
        ),
      ], color:ColorsManager.lightBlack, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          MyProductImage(),
          Spacer(),
          MyProductData(),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
