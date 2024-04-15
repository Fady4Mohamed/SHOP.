import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/home/ui/widgets/bottom_home_bar.dart';
import 'package:shop/features/home/ui/widgets/for_you_boody.dart';
import 'package:shop/features/home/ui/widgets/search_button_home.dart';
import 'package:shop/features/home/ui/widgets/trinding_boody.dart';
import 'package:shop/features/home/ui/widgets/appbar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: 770.h,
            child: Column(
              children: [
                HomeAppBar(),
                SearchButtonHome(),
                ForYouBoody(),
                TrindingBoody(),
                Spacer(),
                BottomHomeBar(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

