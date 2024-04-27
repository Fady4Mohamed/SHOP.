import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/theming/color.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/features/my%20product/data/add%20cubit/add_cubit.dart';

class AddButtonBuilder extends StatefulWidget {
  const AddButtonBuilder({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  State<AddButtonBuilder> createState() => _AddButtonBuilderState();
}

class _AddButtonBuilderState extends State<AddButtonBuilder> {
  Color buttoncolor = ColorsManager.mainphosphorous;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddCubit, AddState>(
      listener: (context, state) async {
        if (state is AddLoding) {
          buttoncolor = Colors.amber;
          setState(() {});
        }
        if (state is AddFailure) {
          buttoncolor = const Color.fromARGB(255, 95, 10, 4);
          setState(() {});
          await Future.delayed(Duration(seconds: 2));
          buttoncolor = ColorsManager.mainphosphorous;
          setState(() {});
        }
        if (state is AddSuccess) {
          buttoncolor = Colors.green;
          setState(() {});
          await Future.delayed(Duration(seconds: 2));
          buttoncolor = ColorsManager.mainphosphorous;
          setState(() {});
        }
      },
      child: ButtonApp(
        onPressed: widget.onPressed,
        titel: 'add',
        color: buttoncolor,
      ),
    );
  }
}
