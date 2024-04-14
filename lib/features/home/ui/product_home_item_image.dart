
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductHomeItemImage extends StatelessWidget {
  const ProductHomeItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:140.h,
      child: AspectRatio(
          aspectRatio: 167 / 115,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                        'assets/image/pitzza.jpg', ),fit: BoxFit.cover)),
          )),
    );
  }
}
