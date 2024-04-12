import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';

class GetStartedText extends StatelessWidget {
  const GetStartedText({super.key});

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Get Started',style: TextStyles.font24Bold,),
        SizedBox(height: 4.h,),
        Text('Enter your details below',style: TextStyles.font14greyregular,)
      ],
    );
  }
}