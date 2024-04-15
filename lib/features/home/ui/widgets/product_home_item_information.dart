import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';

class ProductHomeItemInformation extends StatelessWidget {
  const ProductHomeItemInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 203.h,
          child: Text(
            'Starbuck Borobujlfufhgcghkhf dsfdur',
            style: TextStyles.font14,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        SizedBox(
          width: 203.h,
          child: Text(
            r'$500',
            style: TextStyles.font14.copyWith(color: ColorsManager.mainphosphorous),
            maxLines: 1,
          ),
        )
      ],
    );
  }
}
