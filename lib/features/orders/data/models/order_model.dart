class OrderModel {
  final String productname;
  final double price;
  final int amount;
  final String orderid;
  final String id;
  OrderModel(
      {required this.amount,
      required this.orderid,
      required this.productname,
      required this.price,
       required this.id,});

  factory OrderModel.fromjson(jsonData) {
    return OrderModel(
      id:jsonData['id'],
        amount: jsonData['amount'],
        orderid: jsonData['orderid'],
        price: jsonData['product price'],
        productname: jsonData['productname']);
  }
}