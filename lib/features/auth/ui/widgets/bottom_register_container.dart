import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/helpers/exstintion.dart';
import 'package:shop/core/theming/styles.dart';
import 'package:shop/core/widgets/button.dart';
import 'package:shop/core/widgets/text_field.dart';
import 'package:shop/features/auth/ui/widgets/get_started.dart';

class BottomRegisterContainer extends StatelessWidget {
  const BottomRegisterContainer({
    super.key, this.onTapTextField,
  });
  final void Function()? onTapTextField;
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      backgroundColor:Colors.black ,
      constraints: BoxConstraints(maxHeight: double.infinity,minHeight:530.h,maxWidth: double.infinity ),
      onClosing: () {},
      builder: (context) {
        return Column(
          children: [
            SizedBox(height: 24.h,),
            const GetStartedText(),
            SizedBox(height: 24.h,),
            TextFieldApp(
              icon: Icons.account_circle_outlined,
              hintText: 'E-mail',
              onChanged: (p0) {},
              onTap: onTapTextField,
            ),
            SizedBox(height: 24.h,),
             TextFieldApp(
              isPassword: true,
              icon: Icons.key_outlined,
              hintText: 'Password',
              onChanged: (p0) {},
              onTap: onTapTextField,
            ),
            SizedBox(height: 30.h,),
            ButtonApp(onPressed: (){}, titel: 'Sign Up'),
             SizedBox(height: 30.h,),
            Row(
              children: [
                const Spacer(),
                Text("Already have an account ? ",style: TextStyles.font14greyregular,),
                 GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Text("Sign In",style: TextStyles.font14greyregular.copyWith(color: Colors.white),)),
                const Spacer()
              ],
            ),
           
          ],
        );
      },
    );
  }
}
