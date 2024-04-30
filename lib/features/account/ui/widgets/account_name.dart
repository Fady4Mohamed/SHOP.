
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';

class AccountName extends StatelessWidget {
  const AccountName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40.h,
            backgroundColor: const Color.fromARGB(255, 127, 148, 68),
            child: Text(
              LoginCubit.email.substring(0, 1),
              style: TextStyles.font50Bold,
            ),
          ),
          SizedBox(width: 20.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h,),
              Text(
                LoginCubit.email.substring(0,  LoginCubit.email.indexOf('@')),
                style: TextStyles.font20simebolde,
              ),
              Text(
                LoginCubit.useraddress,
                style: TextStyles.font14greyregular,
              ),
            ],
          )
        ],
      ),
    );
  }
}
