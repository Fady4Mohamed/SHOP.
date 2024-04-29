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
   String username =LoginCubit.email.substring(0, LoginCubit.email.indexOf('@'));
  String userid =LoginCubit.userid;
   double salary =0;
   List<ProductModel> cartinapp=[];
   List<int> amountlist=[];
    Future<void> comp({required String productid,required int amount}) async {
    emit(AddToCartloding());

    DocumentReference order = FirebaseFirestore.instance.collection('${username}order').doc();
    order.set({
      'amount': amount,
      'productid': productid,
    }).then((value) {
    
    })  // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
      emit(AddToCartfailure(error: error.toString()));
    });
  }
  complet()async {
    if (cartinapp.isNotEmpty) {
  for (var i = 0; i < cartinapp.length; i++) {
   await comp(productid: cartinapp[i].id, amount: amountlist[i]);
    }
    DocumentReference order = FirebaseFirestore.instance.collection('orders').doc();
    DocumentSnapshot<Map<String, dynamic>> user =await FirebaseFirestore.instance.collection('users').doc(userid).get();
    order.set({
      'cart': '${username}order',
      'adresse': user['address'],
      'date':  DateTime.now().toString(),
      'orderid':order.id,
      'price':salary,
    }).then((value) {
    
    })  // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
      emit(AddToCartfailure(error: error.toString()));
    });
   emit(AddToCartsuccess());
   await Future.delayed(const Duration(seconds: 1));
   cartinapp.clear();
   amountlist.clear();
   salary=0;
   refresh();
}
  }
  refresh(){
    emit(AddToCartflagetrue());
    emit(AddToCartflagefalse());
  }
}
