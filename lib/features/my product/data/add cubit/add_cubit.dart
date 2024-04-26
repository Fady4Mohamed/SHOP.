import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';
import 'package:shop/features/auth/data/registercubit/register_cubit.dart';
part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(AddInitial());
  final String userid=RegisterCubit.userid??LoginCubit.userid;
  File? file;

  Future<void> addproduct(ProductModel productModel) async {
    emit(AddLoding());
    DocumentReference product = FirebaseFirestore.instance.collection('product').doc();

    product.set({
      'description':productModel.description,
      'name': productModel.name,
      'category': productModel.category,
      'price': productModel.price,
      'image': productModel.image,
      'ownerid':userid,
      'id':product.id
    }).then((value) {
      emit(AddSuccess());
    })
        // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
      emit(AddFailure(error: error.toString()));
    });
  }

  Future<String> uploadImage() async {
     emit(AddLoding());
    if (file != null) {
      String Imagepath =basename(file!.path);
      final storageRef = FirebaseStorage.instance.ref(Imagepath);
      await storageRef.putFile(file!);
      String url;
      url = await storageRef.getDownloadURL();
      return url;
    }
    throw Exception(['image is equal null']);
  }
}
