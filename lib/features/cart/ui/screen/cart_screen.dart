import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          FeaturAppBar(name: 'cart'),
          SizedBox(
            height: 10.h,
          ),
          MyProductList(),
          SizedBox(
            height: 10.h,
          ),
          ButtonApp(onPressed: () {}, titel: 'complet order'),
          SizedBox(
            height: 30.h,
          )
        ],
      ),
    ));
  }
}
