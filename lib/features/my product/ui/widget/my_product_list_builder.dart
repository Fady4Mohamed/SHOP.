import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/features/my%20product/data/fetch%20my%20product%20cubit/fetch_my_product_cubit.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_list.dart';

class MyProductsListbuilder extends StatelessWidget {
  const MyProductsListbuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchMyProductCubit, FetchMyProductState>(
      builder: (context, state) {
        if (state is FetchMyProductsuccsed) {
  return MyProductList(myProductList: BlocProvider.of<FetchMyProductCubit>(context).myProduct,);
}if (state is FetchMyProductfailer) {
  return const Expanded(child: Text('erorr'));
}else{
  return const Expanded(child: Text('loding'));
}
      },
    );
  }
}
