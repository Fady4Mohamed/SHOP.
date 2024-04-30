import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/features/orders/data/manager/ordder%20cubit/order_cubit.dart';
import 'package:shop/features/orders/data/manager/order%20confirm%20cubit/order_confirm_cubit.dart';
import 'package:shop/features/orders/data/models/order_view_model.dart';
import 'package:shop/features/orders/ui/widgets/order_address_text.dart';
import 'package:shop/features/orders/ui/widgets/order_text.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({
    super.key,
    required this.order,
    required this.index,
  });
  final OrderViewModel order;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            OrderText(
                name: '${order.productData.productname}' ' : ',
                value: order.productData.amount.toString()),
            OrderAddressText(
              name: 'Adress : ',
              value: order.buyerAddress,
            ),
            OrderAddressText(name: 'time : ', value: order.buyerTime),
            OrderAddressText(
                name: 'total : ',
                value: (order.productData.price * order.productData.amount)
                    .toString()),
            SizedBox(
              height: 15.h,
            ),
            ButtonApp(
                onPressed: () {
                  
                   BlocProvider.of<OrderConfirmCubit>(context).confirmOrder(id:  BlocProvider.of<OrderCubit>(context)
                       .orders[index].id);
                  BlocProvider.of<OrderCubit>(context)
                      .ordersViewedData
                      .removeAt(index);
                  BlocProvider.of<OrderCubit>(context)
                      .orders
                      .removeAt(index);
                      BlocProvider.of<OrderCubit>(context).refresh();
                },
                titel: 'confirm')
          ],
        ),
      ),
    );
  }
}
