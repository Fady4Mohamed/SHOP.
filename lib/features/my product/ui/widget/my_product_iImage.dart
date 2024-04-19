import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProductImage extends StatelessWidget {
  const MyProductImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 10.w),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:
                  Colors.grey.withOpacity(0.4), // Color of the shadow
              spreadRadius: .4, // Spread radius
              blurRadius: 20, // Blur radius
              offset: Offset(
                  0, 3), // Offset in x and y axis from the container
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 30.h,
          foregroundImage: AssetImage('assets/image/pitzza.jpg'),
        ),
      ),
    );
  }
}