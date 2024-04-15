import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/features/home/ui/widgets/bottom_icon.dart';

class BottomHomeBar extends StatelessWidget {
  const BottomHomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 70.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ColorsManager.mainphosphorous),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomIcon(
            icon: Icons.home,
            onPressed: () {},
            name: 'Home',
          ),
          BottomIcon(
            icon: Icons.widgets_outlined,
            onPressed: () {},
            name: 'Category',
          ),
          BottomIcon(
            icon: Icons.local_mall_outlined,
            onPressed: () {},
            name: 'My Prodct',
          ),
          BottomIcon(
            icon: Icons.assignment_outlined,
            onPressed: () {},
            name: 'Orders',
          ),
          BottomIcon(
            icon: Icons.person_outline,
            onPressed: () {},
            name: 'Profile',
          ),
        ],
      ),
    );
  }
}
