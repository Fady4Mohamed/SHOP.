import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';

class BottomIcon extends StatelessWidget {
  const BottomIcon({
    super.key, required this.icon, required this.onPressed, required this.name,
  });
 final IconData icon;
 final void Function() onPressed;
 final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Icon(
                icon,
                color: Colors.black,
                size: 30.h,
              ),
              Text(name,style: TextStyles.font11Black)
        ],
      ),
    );
  }
}
