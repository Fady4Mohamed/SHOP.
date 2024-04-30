import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/orders/data/manager/ordder%20cubit/order_cubit.dart';
import 'package:shop/features/orders/ui/widgets/order_list.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const FeaturAppBar(name: 'orders'),
          SizedBox(
            height: 10.h,
          ),
          BlocConsumer<OrderCubit, OrderState>(
            listener: (context, state) async{
              if (state is Refreshtrue) {
               await Future.delayed(const Duration(seconds: 1));
                setState(() {
                  
                });
              } 
            },
            builder: (context, state) {
              if (state is Orderloding) {
                return const Text('loding');
              }
              if (state is OrderFailure) {
                return const Text('error');
              } else {
                 return OrderList(
                  orders: BlocProvider.of<OrderCubit>(context).ordersViewedData,
                );
              }
            },
          )
        ],
      ),
    ));
  }
}
