import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
part 'logincubit_state.dart';

class LoginCubit extends Cubit<loginState> {
  LoginCubit() : super(logincubitInitial());
  late final String email;
  late String password;
  void login({required String lemail, required String lpassword}) async {
    emit(logincubitloding());
    try {
       await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: lemail,
        password: lpassword,
      );
      email = lemail;
      password = lpassword;
      emit(logincubitsuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(logincubitfailure(error: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(
            logincubitfailure(error: 'Wrong password provided for that user.'));
      }
    } catch (e) {
      print(e);
      emit(logincubitfailure(error: 'there was an error'));
    }
  }
}
