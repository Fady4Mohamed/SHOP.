import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/features/cart/data/cart%20cubit/add_to_cart_cubit.dart';
import 'package:shop/features/cart/ui/widgets/cart_product_container.dart';

class CartList extends StatefulWidget {
  const CartList({
    super.key,
  });

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
    late List<ProductModel> productList;
  late List<int> amount;
  @override
  Widget build(BuildContext context) {
   productList= BlocProvider.of<AddToCartCubit>(context).cartinapp;
   amount= BlocProvider.of<AddToCartCubit>(context).amountlist;
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 20.h, top: 20.h),
        itemCount:productList.length,
        itemBuilder: (BuildContext contex, int i) {
          return Center(
              child: Padding(
            padding: EdgeInsets.all(8.w),
            child: CartProductcontainer(
              index: i,
              product:productList[i],
              amount: amount[i],
            ),
          ));
        },
      ),
    );
  }
}
