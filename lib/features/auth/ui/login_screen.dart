import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/features/auth/ui/widgets/bottome_container.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            BottomContainer(onTapTextField: () {
             
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
