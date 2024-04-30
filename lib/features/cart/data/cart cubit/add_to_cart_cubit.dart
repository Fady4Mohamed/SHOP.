import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop/core/models/product_model.dart';
import 'dart:core';

import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';
part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit() : super(AddToCartInitial());
  String username =
      LoginCubit.email.substring(0, LoginCubit.email.indexOf('@'));
  String userid = LoginCubit.userid;
  double salary = 0;
  List<ProductModel> cartinapp = [];
  List<int> amountlist = [];
  Future<void> comp(
      {required String productname,
      required int amount,
      required double price,
      required String sellerid,
      required String orderid}) async {
    emit(AddToCartloding());

    DocumentReference order =
        FirebaseFirestore.instance.collection('${sellerid}order').doc();
    order
        .set({
          'amount': amount,
          'product price': price,
          'productname': productname,
          'orderid': orderid,
          'id':order.id
        })
        .then((value) {}) // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
          emit(AddToCartfailure(error: error.toString()));
        });
  }

  complet() async {
    if (cartinapp.isNotEmpty) {
      DocumentReference order =
          FirebaseFirestore.instance.collection('orders').doc();
    await order
          .set({
            'buyerid': userid,
            'adresse': LoginCubit.useraddress,
            'date': DateTime.now().toString(),
            'orderid': order.id,
            'price': salary,
          })
          .then((value) {}) // ignore: invalid_return_type_for_catch_error
          .catchError((error) {
            emit(AddToCartfailure(error: error.toString()));
          });

      for (var i = 0; i < cartinapp.length; i++) {
        await comp(
            productname: cartinapp[i].name,
            amount: amountlist[i],
            price: cartinapp[i].price,
            sellerid: cartinapp[i].ownerid,
            orderid: order.id);
      }
      emit(AddToCartsuccess());
      cartinapp.clear();
      amountlist.clear();
      salary = 0;
      refresh();
    }
  }

  refresh() {
    emit(AddToCartflagetrue());
    emit(AddToCartflagefalse());
  }
}
