import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';

class ButtonLogin extends StatefulWidget {
  const ButtonLogin({
    super.key, this.email, this.password,
  });
  final String? email;
  final String? password;

  @override
  State<ButtonLogin> createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  Color buttoncolor = ColorsManager.mainphosphorous;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, loginState>(
      listener: (context, state)async {
        if (state is logincubitsuccess) {
          buttoncolor = Colors.green;
          setState(() {});
          context.pushNamed(Routes.homeScreen);

        }
        if (state is logincubitfailure) {
          buttoncolor = Colors.red;
          print(state.error);
          setState(() {});
          await Future.delayed(Duration(seconds: 1));
          buttoncolor = ColorsManager.mainphosphorous;
          setState(() {});
        } if (state is logincubitloding)  {
          buttoncolor = Colors.yellow;
          setState(() {});
        }
      },
      child: ButtonApp(onPressed: () { 
          if (widget.email != null && widget.password != null) {
            BlocProvider.of<LoginCubit>(context)
                .login(lemail: widget.email!, lpassword: widget.password!);
          }     
      }, titel: 'Log In',color: buttoncolor,),
    );
  }
}
