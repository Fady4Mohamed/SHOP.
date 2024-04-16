import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/category/ui/widget/category_item_list.dart';

class SpacificCategoriesScreen extends StatelessWidget {
  const SpacificCategoriesScreen({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FeaturAppBar(name: categoryName),
            SizedBox(
              height: 10.h,
            ),
            CategoryItemList(),
          ],
        ),
      ),
    );
  }
}
