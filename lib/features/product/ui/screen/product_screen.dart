import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/product/ui/widgets/product_information.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FeaturAppBar(name: 'Product Details'),
            SizedBox(height: 20.h,),
            Image.asset('assets/image/pitzza.jpg',height: 260.h,),
            ProductInformation(),
            SizedBox(height: 20.h,),
            ButtonApp(onPressed: (){}, titel: 'add to cart')
          ],
        ),
      ),
    ));
  }
}