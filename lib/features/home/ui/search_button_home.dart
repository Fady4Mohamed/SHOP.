
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';

class SearchButtonHome extends StatelessWidget {
  const SearchButtonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 327.w,
              height: 50.h,
              decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Colors.black
              ), 
              child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox (width:  20.w),
      const Icon(Icons.search_rounded,color: Colors.grey,),
      Text('   Search for product',style: TextStyles.font14greyregular,),
    ],
              ),
    );
  }
}
