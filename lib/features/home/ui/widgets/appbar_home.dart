
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('delivery address',style: TextStyles.font14.copyWith(color: ColorsManager.mainphosphorous),),
            SizedBox(height: 4.h,),
            Text(LoginCubit.useraddress,style: TextStyles.font14),
          ],
        ), 
       const Spacer(),
         IconButton(onPressed: (){context.pushNamed(Routes.cartScreen);}, icon:const Icon(Icons.local_grocery_store_outlined,color: ColorsManager.mainphosphorous ,))
      ],),
    );
  }
}