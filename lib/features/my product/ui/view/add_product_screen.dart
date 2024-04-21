import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';

import '../widget/AddBoody.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key, });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
               const FeaturAppBar(name: 'Add product'),
                SizedBox(
                  height: 20.h,
                ),
                AddBoody()
              ],
            ),
          ),
        ),
    );
  }
}
