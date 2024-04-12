import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/features/auth/ui/widgets/bottome_login_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            BottomLoginContainer(onTapTextField: () {
             
              setState(() {
              scrollController.jumpTo(scrollController.position.maxScrollExtent-MediaQuery.of(context).viewInsets.bottom*0.3);
               });
            },),
            
          ],
        ),
      ),
    );
  }
}
