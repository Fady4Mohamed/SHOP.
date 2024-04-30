import 'package:shop/features/orders/data/models/order_model.dart';

class OrderViewModel {
  final OrderModel productData;
  final String buyerTime;
  final String buyerAddress;
  OrderViewModel(
      {required this.buyerAddress,
      required this.buyerTime,
      required this.productData});
}
