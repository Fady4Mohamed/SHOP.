import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_container.dart';

class MyProductList extends StatelessWidget {
  const MyProductList({
    super.key, required this.myProductList,
  });
  final List<ProductModel> myProductList ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 20.h, top: 20.h),
        itemCount: myProductList.length,
        itemBuilder: (BuildContext contex, int i) {
          return Center(
              child: Padding(
            padding: EdgeInsets.all(8.w),
            child: MyProductcontainer(product: myProductList[i],),
          ));
        },
      ),
    );
  }
}
