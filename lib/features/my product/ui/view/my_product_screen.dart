import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/my%20product/ui/widget/cartlistbuilder.dart';

class MyProductScreen extends StatelessWidget {
  const MyProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: 750.h,
            child: Column(
              children: [
                FeaturAppBar(name: 'My Products'),
                MyProductsListbuilder(
                ),
                SizedBox(
                  height:  12.h,
                ),
                ButtonApp(onPressed: () {
                  context.pushNamed(Routes.addProductScreen);
                }, titel: 'Add Products'),
                SizedBox(
                  height: 6.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
