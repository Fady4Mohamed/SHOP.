import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/my%20product/ui/widget/my_product_container.dart';

class MyProductList extends StatelessWidget {
  const MyProductList({super.key, });
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
            padding: EdgeInsets.only(bottom:20),
            itemCount:5,
              itemBuilder: (BuildContext contex, int i) {
       return Center(child: Padding(
         padding:  EdgeInsets.all(8.w),
         child:MyProductcontainer(),
       ));
              },
            ),
    );
  }
}