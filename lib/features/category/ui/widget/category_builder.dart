import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/features/category/data/category%20cubit/category_cubit.dart';
import 'package:shop/features/category/ui/widget/category_item_list.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategorySuccess) {
          return CategoryItemList(
              products: BlocProvider.of<CategoryCubit>(context).products);
        }
        if (state is CategoryFailure) {
          return Text('erorr');
        } else {
          return Text('loding');
        }
      },
    );
  }
}
