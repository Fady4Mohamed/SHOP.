import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItemImage extends StatelessWidget {
  const CategoryItemImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: AspectRatio(
        aspectRatio: 2.8 / 3.3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
