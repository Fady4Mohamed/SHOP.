import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/orders/data/models/order_view_model.dart';
import 'package:shop/features/orders/ui/widgets/order_container.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key, required this.orders});
 final List<OrderViewModel> orders;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
            padding: EdgeInsets.only(bottom:20.h,top: 20.h),
            itemCount:orders.length,
              itemBuilder: (BuildContext contex, int i) {
       return Center(child: Padding(
         padding:  EdgeInsets.all(8.w),
         child:OrderContainer(order: orders[i],index: i,),
       ));
              },
            ),
    );
  }
}