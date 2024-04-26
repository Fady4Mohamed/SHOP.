import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/text_field.dart';
import 'package:shop/features/my%20product/data/add%20cubit/add_cubit.dart';
import 'package:shop/features/my%20product/ui/widget/add_button_builder.dart';
import 'package:shop/features/my%20product/ui/widget/category_drop_button.dart';
import 'package:shop/features/my%20product/ui/widget/choice_image.dart';

class AddBoody extends StatefulWidget {
  const AddBoody({
    super.key,
  });

  @override
  State<AddBoody> createState() => _AddBoodyState();
}

class _AddBoodyState extends State<AddBoody> {
  String? name;
  String? description;
  double? salary;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 600.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: ListView(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                TextFieldApp(
                  icon: Icons.abc,
                  hintText: 'product name ',
                  onChanged: (p0) {
                    name = p0;
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextFieldApp(
                  icon: Icons.monetization_on_outlined,
                  hintText: 'product salary ',
                  onChanged: (p0) {
                    salary = double.parse(p0);
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextFieldApp(
                  icon: Icons.assignment_outlined,
                  hintText: 'description',
                  onChanged: (p0) {
                    description = p0;
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                CategoryDropButton(),
                SizedBox(
                  height: 40.h,
                ),
                ChoiceImage(),
                SizedBox(
                  height: 20.h,
                ),
                AddButtonBuilder(
                  onPressed: () async {
                    if (BlocProvider.of<AddCubit>(context).file != null &&
                        description != null &&
                        salary != null &&
                        name != null) {
                      String url = await BlocProvider.of<AddCubit>(context)
                          .uploadImage();
                     print(name);
                     print('---------------------------------');
                      BlocProvider.of<AddCubit>(context).addproduct(
                          description: description!,
                          image: url,
                          price: salary!.toString(),
                          name: name!);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
