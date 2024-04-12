import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/features/auth/ui/widgets/bottom_register_container.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  ScrollController scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          controller: scrollController,
          children: [
            SizedBox(height: 100.h,),
            SvgPicture.asset(
              'assets/svgs/Group 18286.svg',
              height: 43.18.h,
            ),
            SizedBox(height:  105.h),
            BottomRegisterContainer(onTapTextField: () {
             
              setState(() {
                scrollController.jumpTo(scrollController.position.maxScrollExtent);
              });
            },),
            
          ],
        ),
      ),
    );
  }
}