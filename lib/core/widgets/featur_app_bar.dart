import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/theming/styles.dart';

class FeaturAppBar extends StatelessWidget {
  const FeaturAppBar({
    super.key, required this.name,
  });
 final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 16.h),
      child: Row(
        children: [
          SizedBox(width: 28.w,),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(14.w)),
            child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 28.w,
                ),),
          ),
           SizedBox(width: 75.w,),
          Text(name,style: TextStyles.font20simebolde,)
        ],
      ),
    );
  }
}
