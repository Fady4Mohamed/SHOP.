import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/theming/color.dart';

class MyProductImage extends StatelessWidget {
  const MyProductImage({
    super.key, required this.product,
  });
 final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 10.w),
      child: CircleAvatar(
        backgroundColor: ColorsManager.lightBlack,
        radius: 30.h,
        child: Image.network(product.image),
      ),
    );
  }
}