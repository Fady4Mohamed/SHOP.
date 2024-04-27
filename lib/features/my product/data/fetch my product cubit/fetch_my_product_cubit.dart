import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';

part 'fetch_my_product_state.dart';

class FetchMyProductCubit extends Cubit<FetchMyProductState> {
  FetchMyProductCubit() : super(FetchMyProductInitial());
  final String username = LoginCubit.email;
  List<ProductModel> myProduct = [];
  getmyProduct() async {
    emit(FetchMyProductloding());
    try {
  QuerySnapshot data =
      await FirebaseFirestore.instance.collection('$username').get();
  for (int v = 0; v < data.docs.length; v++) {
    myProduct.add(ProductModel.fromjason(data.docs[v]));
    
  }
  emit(FetchMyProductsuccsed());
} on Exception catch (e) {
  emit(FetchMyProductfailer(e.toString()));
  print(e.toString());
}
    
  }
}
