import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/features/auth/data/registercubit/register_cubit.dart';

class ButtonRegister extends StatefulWidget {
  const ButtonRegister({
    super.key,
    this.email,
    this.password, this.address,
  });
  final String? email;
  final String? password;
  final String? address;
  @override
  State<ButtonRegister> createState() => _ButtonRegisterState();
}

class _ButtonRegisterState extends State<ButtonRegister> {
  Color buttoncolor = ColorsManager.mainphosphorous;
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) async {
        if (state is Registersuccess) {
          buttoncolor = Colors.green;
          setState(() {});
          context.pushNamed(Routes.homeScreen);

        }
        if (state is Registerfailure) {
          buttoncolor = Colors.red;
          print(state.error);
          setState(() {});
          await Future.delayed(Duration(seconds: 1));
          buttoncolor = ColorsManager.mainphosphorous;
          setState(() {});
        }   if (state is Registerloding) {
          buttoncolor = Colors.yellow;
        }
      },
      child: ButtonApp(
        onPressed: () {
          if (widget.email != null && widget.password != null&&widget.address!=null) {
            BlocProvider.of<RegisterCubit>(context)
                .register(lemail: widget.email!, lpassword: widget.password!,address: widget.address!);
          }
        },
        titel: 'Sign Up',
        color: buttoncolor,
      ),
    );
  }
}
