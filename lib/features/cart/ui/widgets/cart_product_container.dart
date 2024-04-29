import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/features/cart/ui/widgets/cart_container_data.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_iImage.dart';

class CartProductcontainer extends StatelessWidget {
  const CartProductcontainer({
    super.key,
    required this.product,
    required this.amount, required this.index,
  });
  final ProductModel product;
  final int amount;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 100.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Color of the shadow
              spreadRadius: 2, // Spread radius
              blurRadius: 20,
            ),
          ],
          color: ColorsManager.lightBlack,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          MyProductImage(
            product: product,
          ),
          const Spacer(),
          CartContainerData(index: index,
            product: product,
            amount: amount,
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
