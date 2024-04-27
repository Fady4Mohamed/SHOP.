import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/product/ui/widgets/amount_container.dart';
import 'package:shop/features/product/ui/widgets/line.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({
    super.key, required this.product,
  });
final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              style: TextStyles.font16,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            r'$''${product.price}',
            style: TextStyles.font16
                .copyWith(color: ColorsManager.mainphosphorous),
          ),
          SizedBox(
            height: 30.h,
            child: Row(
              children: [
                Text(
                  'Electronic',
                  style: TextStyles.font14greyregular,
                ),const Spacer(),
                AmountContainer(),
                SizedBox(width: 10.w,),
              ],
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
                product.description, style: TextStyles.font14greyregular, maxLines:7 ,overflow: TextOverflow.ellipsis
                ,
              )),
        ],
      ),
    );
  }
}
