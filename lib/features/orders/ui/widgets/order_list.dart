import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/orders/ui/widgets/order_container.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
            padding: EdgeInsets.only(bottom:20.h,top: 20.h),
            itemCount:5,
              itemBuilder: (BuildContext contex, int i) {
       return Center(child: Padding(
         padding:  EdgeInsets.all(8.w),
         child:OrderContainer(),
       ));
              },
            ),
    );
  }
}