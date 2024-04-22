import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';

class OrderText extends StatelessWidget {
  const OrderText({
    super.key, required this.name, required this.value,
  });
 final String name;
 final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 230.w,
          child: Text(name,style: TextStyles.font18simebolde.copyWith(color: ColorsManager.mainphosphorous),)),
        Text(value,style: TextStyles.font16,),
      ],
    );
  }
}
