import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/features/cart/data/cart%20cubit/add_to_cart_cubit.dart';

class CompletOrderButton extends StatefulWidget {
  const CompletOrderButton({
    super.key,
  });

  @override
  State<CompletOrderButton> createState() => _CompletOrderButtonState();
}

class _CompletOrderButtonState extends State<CompletOrderButton> {
  Color buttoncolor = ColorsManager.mainphosphorous;
  @override
void dispose() {
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddToCartCubit, AddToCartState>(
      listener: (context, state) async {
        if (state is AddToCartloding) {
          buttoncolor = Colors.amber;
          setState(() {});
        }
        if (state is AddToCartfailure) {
          buttoncolor = const Color.fromARGB(255, 95, 10, 4);
          setState(() {});
          await Future.delayed(const Duration(seconds: 2));
          buttoncolor = ColorsManager.mainphosphorous;
          setState(() {});
        }
        if (state is AddToCartsuccess) {
          buttoncolor = Colors.green;
          setState(() {});
          await Future.delayed(const Duration(seconds: 2));
          buttoncolor = ColorsManager.mainphosphorous;
          setState(() {});
        }},
      child: ButtonApp(
          onPressed: () {
            BlocProvider.of<AddToCartCubit>(context).complet();
          },
          titel: 'complet order'),
    );
  }
}
