
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/orders/ui/widgets/order_address_text.dart';
import 'package:shop/features/orders/ui/widgets/order_text.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderAddressText(name: 'Adress : ',value: '2 said street fine',),
              OrderText(name: 'pitzza : ', value: '2'),
              OrderText(name: 'mobil phone : ', value: '1'),
              OrderAddressText(name: 'total : ', value: r'$256'),
            ],
          ),
        ),
    );
  }
}
