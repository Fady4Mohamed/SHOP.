import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  late final String email;
  static late final String? userid;
  void register({required String lemail, required String lpassword,required String address}) async {
    emit(Registerloding());
    try {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: lemail,
        password: lpassword,
      );
        DocumentReference user = FirebaseFirestore.instance.collection('users').doc();
     
    user.set({
      'address':address,
     'userid':user.id,
     'e-mail':lemail
    }).then((value) {
    emit(Registersuccess());
    });
    userid=user.id;
      email=lemail;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(Registerfailure(error: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(Registerfailure(
            error: 'The account already exists for that email.'));
      }
    } catch (e) {
      print(e);
      emit(Registerfailure(error: 'there was an error try again'));
    }
  }
}
