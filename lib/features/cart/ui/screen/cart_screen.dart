import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/cart/data/cart%20cubit/add_to_cart_cubit.dart';
import 'package:shop/features/cart/ui/widgets/cart_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const FeaturAppBar(name: 'Cart'),
          SizedBox(
            height: 10.h,
          ),
          BlocListener<AddToCartCubit, AddToCartState>(
            listener: (context, state) {
              if (state is AddToCartflagetrue) {
                print('object');
                setState(() {});
              }
            },
            child: CartList(),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            r'$' '${BlocProvider.of<AddToCartCubit>(context).salary}',
            style: TextStyles.font14,
          ),
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
