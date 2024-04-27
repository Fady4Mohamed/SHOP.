import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/features/home/ui/widgets/product_home_item.dart';

class ProductHomelist extends StatelessWidget {
  const ProductHomelist({super.key, required this.productlist});

 final List<ProductModel> productlist;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Padding(
        padding:  EdgeInsets.only(left: 6.h),
        child: ListView.builder(
          itemCount: productlist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) {
          return  Padding(
            padding: EdgeInsets.only(left:16.h),
            child:ProductHomeItem(product: productlist[index],),
          );
        },),
      ),
    );
  }
}