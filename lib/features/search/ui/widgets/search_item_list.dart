import 'package:flutter/material.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/features/category/ui/widget/category_item.dart';

class SearchItemList extends StatelessWidget {
  const SearchItemList({
    super.key, required this.products,
  });
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return ItemWithDetails(product: products[index],);
        },
      ),
    );
  }
}
