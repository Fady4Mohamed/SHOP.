import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/product/ui/widgets/line.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({
    super.key, this.onTap, required this.name,
  });
  final Function()? onTap;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:20.h ,),
        GestureDetector(
          onTap:onTap ,
          child: Padding(
            padding:  EdgeInsets.only(left: 20.w),
            child: Text(
                 name,
                 style: TextStyles.font18greyregular,
               ),
          ),
        ),
        const Line(),
      ],
    );
  }
}