import 'package:flutter/material.dart';
import 'package:shop/features/category/ui/widget/category_item.dart';

class CategoryItemList extends StatelessWidget {
  const CategoryItemList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 7,
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return ItemWithDetails();
        },
      ),
    );
  }
}
