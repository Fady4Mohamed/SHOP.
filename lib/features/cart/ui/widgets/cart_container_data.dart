import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/cart/data/cart%20cubit/add_to_cart_cubit.dart';

class CartContainerData extends StatelessWidget {
  const CartContainerData({
    super.key,
    required this.product,
    required this.amount,
    required this.index,
  });
  final ProductModel product;
  final int amount;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            SizedBox(
                width: 160.w,
                child: Text(
                  product.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font18simebolde,
                )),
            IconButton(
                onPressed: () {
                  //edit salary
                  BlocProvider.of<AddToCartCubit>(context).salary -=
                      (BlocProvider.of<AddToCartCubit>(context)
                              .amountlist[index] *
                          BlocProvider.of<AddToCartCubit>(context)
                              .cartinapp[index]
                              .price);
                  //remove from amount list
                  BlocProvider.of<AddToCartCubit>(context)
                      .amountlist
                      .removeAt(index);
                  //remove from cart list
                  BlocProvider.of<AddToCartCubit>(context)
                      .cartinapp
                      .removeAt(index);
                  //set state the cart list
                  BlocProvider.of<AddToCartCubit>(context).refresh();
                },
                icon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                  size: 25.w,
                ))
          ],
        ),
        SizedBox(
          width: 160.w,
          child: Row(
            children: [
              Text(
                r'$' '${product.price}',
                style: TextStyles.font18simebolde,
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: ColorsManager.mainphosphorous),
                child: Padding(
                  padding: EdgeInsets.all(6.w),
                  child: Row(
                    children: [
                      Text(
                        '  $amount  ',
                        style: TextStyles.font11Black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
