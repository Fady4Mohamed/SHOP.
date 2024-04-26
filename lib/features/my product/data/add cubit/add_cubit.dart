import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';
part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(AddInitial());
  final String userid = LoginCubit.userid;
  final String username = LoginCubit.email;
  File? file;
  late String category;
  Future<void> addproduct(
      {required String description,
      required String name,
      required String price,
      required String image}) async {
    if (category != 'category') {
      emit(AddLoding());
      DocumentReference product =
          FirebaseFirestore.instance.collection('product').doc();
      DocumentReference user =
          FirebaseFirestore.instance.collection('$username').doc();
      user.set({
        'description': description,
        'name': name,
        'category': category,
        'price': price,
        'image': image,
        'ownerid': userid,
        'id': user.id
      });
      product.set({
        'description': description,
        'name': name,
        'category': category,
        'price': price,
        'image': image,
        'ownerid': userid,
        'id': product.id
      }).then((value) {
        emit(AddSuccess());
      }).catchError((error) {
        emit(AddFailure(error: error.toString()));
      });
    }
  }

  Future<String> uploadImage() async {
    emit(AddLoding());
    if (file != null) {
      String Imagepath = basename(file!.path);
      final storageRef = FirebaseStorage.instance.ref(Imagepath);
      await storageRef.putFile(file!);
      String url;
      url = await storageRef.getDownloadURL();
      return url;
    }
    throw Exception(['image is equal null']);
  }
}
