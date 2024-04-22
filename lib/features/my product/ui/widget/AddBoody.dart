import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/core/widgets/text_field.dart';
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
  String? category;
  String? description;
  double? salary;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:600.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: ListView(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                TextFieldApp(
                  icon: Icons.abc,
                  hintText: 'food name ',
                  onChanged: (p0) {
                    name = p0;
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextFieldApp(
                  icon: Icons.monetization_on_outlined,
                  hintText: 'food salary ',
                  onChanged: (p0) {
                    salary = double.parse(p0);
                  },
                ),
                SizedBox(
                   height: 40.h,
                ),
                TextFieldApp(
                  icon: Icons.copyright_outlined,
                  hintText: 'category ',
                  onChanged: (p0) {
                    category = p0;
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
                  height: 80.h,
                ),
                ChoiceImage(),
                SizedBox(
                   height: 20.h,
                ),
                ButtonApp(
                    onPressed: () async {
                    
                    },
                    titel: 'add',
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
