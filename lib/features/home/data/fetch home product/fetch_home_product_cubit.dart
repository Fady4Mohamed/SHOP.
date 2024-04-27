import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:shop/core/models/product_model.dart';

part 'fetch_home_product_state.dart';

class FetchHomeProductCubit extends Cubit<FetchHomeProductState> {
  FetchHomeProductCubit() : super(FetchHomeProductInitial());
  List<ProductModel> products = [];
  getmyProduct() async {
    products.clear();
    emit(FetchHomeProductLoding());
    try {
  QuerySnapshot data =
      await FirebaseFirestore.instance.collection('product').get();
  for (int v = 0; v < data.docs.length; v++) {
    products.add(ProductModel.fromjason(data.docs[v]));
    
  }
  emit(FetchHomeProductSuccess());
} on Exception catch (e) {
  emit(FetchHomeProductFailure(e.toString()));
  print(e.toString());
}
    
  }
}
