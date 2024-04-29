import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/features/product/data/cubit/product_manager_cubit.dart';

class AmountContainer extends StatefulWidget {
  const AmountContainer({
    super.key,
  });

  @override
  State<AmountContainer> createState() => _AmountContainerState();
}

class _AmountContainerState extends State<AmountContainer> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Color of the shadow
              spreadRadius: .2, // Spread radius
              blurRadius: 20,
            ),
          ],
          color: ColorsManager.lightBlack,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  amount++;
                  BlocProvider.of<ProductManagerCubit>(context)
                          .amount=amount;
                });
              },
              icon: Icon(
                Icons.plus_one_outlined,
                size: 15.h,
              )),
          Text(
            amount.toString(),
            style: TextStyles.font11Black.copyWith(color: Colors.white),
          ),
          IconButton(
              onPressed: () {
                if (amount != 1) {
                  setState(() {
                    amount--;
                    BlocProvider.of<ProductManagerCubit>(context)
                          .amount=amount;
                  });
                }
              },
              icon: Icon(
                Icons.exposure_neg_1,
                size: 15.h,
              )),
        ],
      ),
    );
  }
}
