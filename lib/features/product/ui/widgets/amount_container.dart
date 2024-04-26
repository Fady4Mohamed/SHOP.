import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';

class AmountContainer extends StatelessWidget {
  const AmountContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Color of the shadow
              spreadRadius: .2, // Spread radius
              blurRadius: 20,
            ),
          ],
          color: ColorsManager.lightBlack,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          IconButton(
              onPressed: () {}, icon:  Icon(Icons.plus_one_outlined,size: 15.h,)),
          Text('1',style: TextStyles.font11Black.copyWith(color: Colors.white),),
          IconButton(onPressed: () {}, icon:  Icon(Icons.exposure_neg_1,size: 15.h,)),
        ],
      ),
    );
  }
}
