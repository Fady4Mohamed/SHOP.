import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/cart/data/cart%20cubit/add_to_cart_cubit.dart';
import 'package:shop/features/product/data/cubit/product_manager_cubit.dart';
import 'package:shop/features/product/ui/widgets/product_information.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 750.h,
          child: Column(
            children: [
              const FeaturAppBar(name: 'Product Details'),
              SizedBox(
                height: 20.h,
              ),
              Image.network(
                product.image,
                height: 260.h,
              ),
              ProductInformation(
                product: product,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Spacer(),
              ButtonApp(
                  onPressed: () {
                    BlocProvider.of<AddToCartCubit>(context)
                        .cartinapp
                        .add(product);
                    BlocProvider.of<AddToCartCubit>(context).salary +=
                        product.price*BlocProvider.of<ProductManagerCubit>(context)
                        .amount;
                    BlocProvider.of<AddToCartCubit>(context)
                        .amountlist
                        .add(BlocProvider.of<ProductManagerCubit>(context)
                        .amount);
                  },
                  titel: 'add to cart'),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
