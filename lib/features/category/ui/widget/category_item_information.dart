import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';

class CategoryItemInformation extends StatelessWidget {
  const CategoryItemInformation({
    super.key, required this.product,
  });
  final ProductModel product; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190.w,
      height: 117.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: TextStyles.font18simebolde,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          
          Text(
            product.description,
            style: TextStyles.font14greyregular,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            r'$''${product.price}',
            style: TextStyles.font14
                .copyWith(color: ColorsManager.mainphosphorous),
          ),
          
        ],
      ),
    );
  }
}
