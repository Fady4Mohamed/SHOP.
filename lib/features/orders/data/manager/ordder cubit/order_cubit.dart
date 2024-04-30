import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';
import 'package:shop/features/orders/data/models/order_model.dart';
import 'package:shop/features/orders/data/models/order_view_model.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());
  List<OrderModel> orders = [];
  List<OrderViewModel> ordersViewedData = [];
  String sellerid = LoginCubit.userid;
  getAllorders() async {
    orders.clear();
    ordersViewedData.clear();
    emit(Orderloding());
    try {
      QuerySnapshot data =
          await FirebaseFirestore.instance.collection('${sellerid}order').get();
      for (int v = 0; v < data.docs.length; v++) {
        orders.add(OrderModel.fromjson(data.docs[v]));
        DocumentSnapshot<Map<String, dynamic>> doc = await FirebaseFirestore
            .instance
            .collection('orders')
            .doc(orders[v].orderid)
            .get();
        ordersViewedData.add(OrderViewModel(
            buyerAddress: doc['adresse'],
            buyerTime:  doc['date'].substring(0,  doc['date'].indexOf(':')+3),
            productData: orders[v]));
      }
      emit(Ordersuccess());
    } on Exception catch (e) {
      emit(OrderFailure(error: e.toString()));
      print(e.toString());
    }
  }
  refresh(){
    emit(Refreshtrue());
    emit(Refreshfalse());
  }
}
