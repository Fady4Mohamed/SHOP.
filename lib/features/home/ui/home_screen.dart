import 'package:flutter/material.dart';
import 'package:shop/features/home/ui/search_button_home.dart';
import 'package:shop/features/home/ui/trinding_boody.dart';
import 'package:shop/features/home/ui/appbar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeAppBar(),
            SearchButtonHome(),
            TrindingBoody(),
          ],
        ),
      ),
    );
  }
}
