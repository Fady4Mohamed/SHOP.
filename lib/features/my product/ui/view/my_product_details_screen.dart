import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/product/ui/widgets/line.dart';

class MyProductDetailsScreen extends StatelessWidget {
  const MyProductDetailsScreen({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FeaturAppBar(name: 'Product Details'),
            SizedBox(
              height: 20.h,
            ),
            Image.network(
              product.image,
              height: 260.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  const Line(),
                  SizedBox(
                    width: 250.w,
                    child: Text(
                      product.name,
                      style: TextStyles.font20simebolde,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    r'$' '${product.price}',
                    style: TextStyles.font16
                        .copyWith(color: ColorsManager.mainphosphorous),
                  ),
                  SizedBox(
                    height: 30.h,
                    child: Text(
                      product.category,
                      style: TextStyles.font14greyregular,
                    ),
                  ),
                  Text(
                    'Description',
                    style: TextStyles.font16,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                      width: 340.w,
                      child: Text(
                        product.description,
                        style: TextStyles.font14greyregular,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
