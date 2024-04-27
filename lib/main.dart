import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/routing/app_router.dart';
import 'package:shop/features/auth/data/logincubit/logincubit_cubit.dart';
import 'package:shop/features/auth/data/registercubit/register_cubit.dart';
import 'package:shop/features/home/data/fetch%20home%20product/fetch_home_product_cubit.dart';
import 'package:shop/features/my%20product/data/fetch%20my%20product%20cubit/fetch_my_product_cubit.dart';
import 'package:shop/firebase_options.dart';
import 'package:shop/shop_app.dart';

void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),BlocProvider(
          create: (context) => FetchMyProductCubit(),
        ),
        BlocProvider(
          create: (context) => FetchHomeProductCubit()..getmyProduct(),
        ),
      ],
      child: ShopApp(
        appRouter: AppRouter(),
      ),
    );
  }
}
