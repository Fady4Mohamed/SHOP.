import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/core/widgets/text_field.dart';
import 'package:shop/features/search/ui/widgets/search_item_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FeaturAppBar(name: 'Search 🔍'),
            SizedBox(
              height: 30.h,
            ),
            TextFieldApp(
              icon: Icons.search_outlined,
              hintText: 'Search for product',
            ),
            SizedBox(
              height: 20.h,
            ),
            SearchItemList()
          ],
        ),
      ),
    );
  }
}
