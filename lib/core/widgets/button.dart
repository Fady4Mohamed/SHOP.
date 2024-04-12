import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({ super.key,
    required this.onPressed,
    required this.titel, 
  });
  final void Function()? onPressed;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 327.w,
          height: 56.h,
      child: TextButton(
        onPressed: onPressed,
        child: Center(
            child: Text(
           titel,
          style: TextStyles.font16Blacksimebolde,
          
        )),
        style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                (context) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15));
            }),
            backgroundColor: MaterialStateProperty.all(ColorsManager.mainphosphorous )),
      ),
    );
  }
}
