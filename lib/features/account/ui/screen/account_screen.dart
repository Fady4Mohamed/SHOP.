import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/account/ui/widgets/account_button.dart';
import 'package:shop/features/account/ui/widgets/account_name.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FeaturAppBar(name: 'Account'),
          const AccountName(),
          SizedBox(height: 30.h,),
           AccountButton(name: 'Add product',onTap: () {
               context.pushNamed(Routes.addProductScreen);
           },),
          AccountButton(name: 'Categories',onTap: () {
              context.pushNamed(Routes.category);
             
           },),
          AccountButton(name: 'Cart',onTap: () {
             context.pushNamed(Routes.cartScreen);
           },),
          AccountButton(name: 'My product',onTap: () {
             context.pushNamed(Routes.myProductScreen);
           },),
          AccountButton(name: 'Search product',onTap: () {
             context.pushNamed(Routes.searchScreen);
           },),
           SizedBox(height: 40.h,),
            Padding(
              padding:  EdgeInsets.only(left:  20.w),
              child: GestureDetector(
                onTap: ()async {
              await FirebaseAuth.instance.signOut();
                  context.pushReplacementNamed(Routes.loginScreen);
                },
                child: Text(
                     'Logout',
                     style: TextStyles.font18greyregular.copyWith(color:  ColorsManager.mainphosphorous),
                   ),
              ),
            ),
        ],
      ),
    ));
  }
}


