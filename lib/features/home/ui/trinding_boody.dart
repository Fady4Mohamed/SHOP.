import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/home/ui/product_home_list.dart';

class TrindingBoody extends StatelessWidget {
  const TrindingBoody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.all(20.h),
          child: Text(
            'Trinding',
            style: TextStyles.font18simebolde,
          ),
        ),
        ProductHomelist(),
      ],
    );
  }
}
