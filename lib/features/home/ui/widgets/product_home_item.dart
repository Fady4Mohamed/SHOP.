import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/home/ui/widgets/product_home_item_image.dart';
import 'package:shop/features/home/ui/widgets/product_home_item_information.dart';

class ProductHomeItem extends StatelessWidget {
  const ProductHomeItem({super.key, required this.product});

 final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productScreen);
      },
      child: SizedBox(
        height: 200.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ProductHomeItemImage(product: product,), ProductHomeItemInformation(product: product,)],
        ),
      ),
    );
  }
}
