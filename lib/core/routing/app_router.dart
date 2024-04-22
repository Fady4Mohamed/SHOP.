
import 'package:flutter/material.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/auth/ui/login_screen.dart';
import 'package:shop/features/auth/ui/register_screen.dart';
import 'package:shop/features/category/ui/views/category_screen.dart';
import 'package:shop/features/category/ui/views/specific_categories_screen.dart';
import 'package:shop/features/home/ui/home_screen.dart';
import 'package:shop/features/my%20product/ui/view/add_product_screen.dart';
import 'package:shop/features/my%20product/ui/view/my_product_screen.dart';
import 'package:shop/features/orders/ui/screens/order_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
        case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
        case Routes.category:
        return MaterialPageRoute(
          builder: (_) => const CategoryScreen(),
        );
        case Routes.specificCategoryScreen:
        return MaterialPageRoute(
          builder: (_) =>  SpacificCategoriesScreen(categoryName: arguments as String ,),
        );
        case Routes.myProductScreen:
        return MaterialPageRoute(
          builder: (_) => const MyProductScreen(),
        );
        case Routes.addProductScreen:
        return MaterialPageRoute(
          builder: (_) => const AddProductScreen(),
        );
        case Routes.orderScreen:
        return MaterialPageRoute(
          builder: (_) => const OrderScreen(),
        );

      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<LoginCubit>(),
      //       child: const LoginScreen(),
      //     ),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}