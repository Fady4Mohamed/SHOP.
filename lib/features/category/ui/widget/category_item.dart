import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'category_item_image.dart';
import 'category_item_information.dart';

class ItemWithDetails extends StatelessWidget {
  const ItemWithDetails({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 40.w, top: 10.7.h),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            CategoryItemImage(
              image: 'assets/image/pitzza.jpg',
            ),
            SizedBox(
              width: 20.h,
            ),
            CategoryItemInformation(),
          ],
        ),
      ),
    );
  }
}
