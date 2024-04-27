import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';

class MyProductData extends StatelessWidget {
  const MyProductData({
    super.key, required this.product,
  });
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: 160.w,
            child: Text(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.font18simebolde,
            )),
        SizedBox(
          width: 160.w,
          child: Row(
            children: [
              Text(
                r'$''${product.price}',
                style: TextStyles.font18simebolde,
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color:ColorsManager.mainphosphorous),
                child: Padding(
                  padding: EdgeInsets.all(6.w),
                  child: Row(
                    children: [
                      Text(
                        '  0  ',
                        style
                            : TextStyles.font11Black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

