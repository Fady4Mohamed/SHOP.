import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/orders/ui/widgets/order_list.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          FeaturAppBar(name: 'orders'),
          SizedBox(height: 10.h,),
          OrderList()
        ],
      ),
    ));
  }
}
