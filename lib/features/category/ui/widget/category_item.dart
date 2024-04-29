import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/routing/routes.dart';
import 'category_item_image.dart';
import 'category_item_information.dart';

class ItemWithDetails extends StatelessWidget {
  const ItemWithDetails({
    super.key, required this.product,
  });
  final ProductModel product; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 40.w, top: 10.7.h),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(Routes.productScreen,arguments: product);
        },
        child: Row(
          children: [
            CategoryItemImage(
              image: product.image,
            ),
            SizedBox(
              width: 20.h,
            ),
            CategoryItemInformation(product: product,),
          ],
        ),
      ),
    );
  }
}
