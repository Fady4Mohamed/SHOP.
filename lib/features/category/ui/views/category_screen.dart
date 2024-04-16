import 'package:flutter/material.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/features/category/ui/widget/catecory_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const FeaturAppBar(
              name: 'categories',
            ),
            CategoryButton(
              imagename: 'assets/svgs/electronic-components-2.svg',
              name: 'Electronic',
              onPressed: () {
                context.pushNamed(Routes.specificCategoryScreen,
                    arguments: 'Electronic');
              },
            ),
            CategoryButton(
              imagename: 'assets/svgs/baby-56.svg',
              name: 'kide',
              onPressed: () {
                context.pushNamed(Routes.specificCategoryScreen,
                    arguments: 'kide');},
            ),
            CategoryButton(
              imagename: 'assets/svgs/dog-28.svg',
              name: 'Pets',
              onPressed: () {
                context.pushNamed(Routes.specificCategoryScreen,
                    arguments: 'Pets');},
            ),
            CategoryButton(
              imagename: 'assets/svgs/game-16.svg',
              name: 'Games',
              onPressed: () {
                context.pushNamed(Routes.specificCategoryScreen,
                    arguments: 'Games');},
            ),
            CategoryButton(
              imagename: 'assets/svgs/t-shirt-59.svg',
              name: 'Fashion',
              onPressed: () {
                context.pushNamed(Routes.specificCategoryScreen,
                    arguments: 'Fashion');},
            ),
          ],
        ),
      ),
    );
  }
}
