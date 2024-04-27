import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:shop/core/models/product_model.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());
  List<ProductModel> products = [];
  getProduct({required String category}) async {
    products.clear();
    emit(CategoryLoding());
    try {
      QuerySnapshot data =
          await FirebaseFirestore.instance.collection('product').get();
      for (int v = 0; v < data.docs.length; v++) {
        if (data.docs[v]['category'] == category) {
          products.add(ProductModel.fromjason(data.docs[v]));
        }
      }
      emit(CategorySuccess());
    } on Exception catch (e) {
      emit(CategoryFailure(e.toString()));
      print(e.toString());
    }
  }
}
