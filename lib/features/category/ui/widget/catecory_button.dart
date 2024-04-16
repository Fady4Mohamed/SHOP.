import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/core/theming/styles.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.imagename, required this.name, required this.onPressed});
 
 final String imagename;
 final String name;
 final  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20.h),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 327.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black),
          child: Row(
            children: [
              SizedBox(width: 20.w,),
              SvgPicture.asset(imagename,height: 40.h,),
               SizedBox(width: 10.w,),
              Text(name,style: TextStyles.font14,),
              Spacer(),
              Icon(Icons.keyboard_arrow_right,size: 35.h,),
               SizedBox(width: 20.w,),
            ],
          ),
        ),
      ),
    );
  }
}