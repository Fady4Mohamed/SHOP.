import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/product/ui/widgets/line.dart';

class MyProductDetailsScreen extends StatelessWidget {
  const MyProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FeaturAppBar(name: 'Product Details'),
            SizedBox(height: 20.h,),
            Image.asset('assets/image/pitzza.jpg',height: 260.h,),
           Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          const Line(),
          SizedBox(
            width: 250.w,
            child: Text(
              'lenovo laptop gaming 1999 ssd 250',
              style: TextStyles.font16,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            r'$1250',
            style: TextStyles.font16
                .copyWith(color: ColorsManager.mainphosphorous),
          ),
          SizedBox(
            height: 30.h,
            child: Text(
              'Electronic',
              style: TextStyles.font14greyregular,
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
                'fhg vghg hbsaf afbahbf fahbfghja bdjvf a bavhvf gavhfgd fbfvjv f abfjhva f fhbajlfa fa fhb  afbdjh  d fkhbjfvgkvfjhhvf  hvfgvdfn bbljv jjhvj gvhkch gvhcgjfgf gf jgcfgfcc n hgchfjgc nb vkhgcfxjcb jvkghcj nb gvhjfcj kgffddfg',
                style: TextStyles.font14greyregular,
              )),
        ],
      ),
    )
          ],
        ),
      ),
    ));
  }
}