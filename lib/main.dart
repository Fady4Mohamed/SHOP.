import 'package:flutter/material.dart';
import 'package:shop/core/routing/app_router.dart';
import 'package:shop/shop_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ShopApp(appRouter: AppRouter(),);
  }
}
