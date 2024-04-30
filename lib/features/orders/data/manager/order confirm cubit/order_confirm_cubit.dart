import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';

part 'order_confirm_state.dart';

class OrderConfirmCubit extends Cubit<OrderConfirmState> {
  OrderConfirmCubit() : super(OrderInitial());
  String sellerid = LoginCubit.userid;
  confirmOrder({required String id, }) {
    emit(Orderloding());
    try {
      FirebaseFirestore.instance
          .collection('${sellerid}order')
          .doc(id)
          .delete()
          .then((value) => emit(Ordersuccess()))
          .catchError((error) => emit(OrderFailure(error: error.toString())));
    } on Exception catch (e) {
      emit(OrderFailure(error: e.toString()));
    }
  }
}
