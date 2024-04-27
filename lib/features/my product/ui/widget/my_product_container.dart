
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_data.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_iImage.dart';

class MyProductcontainer extends StatelessWidget {
  const MyProductcontainer({
    super.key, required this.product,
  });
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.myProductDetailsScreen,arguments: product);
      },
      child: Container(
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
            MyProductImage(product: product,),
            Spacer(),
            MyProductData(product: product,),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
