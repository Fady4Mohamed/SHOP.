import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/account/ui/screen/account_screen.dart';
import 'package:shop/features/auth/ui/login_screen.dart';
import 'package:shop/features/auth/ui/register_screen.dart';
import 'package:shop/features/cart/ui/screen/cart_screen.dart';
import 'package:shop/features/category/data/category%20cubit/category_cubit.dart';
import 'package:shop/features/category/ui/views/category_screen.dart';
import 'package:shop/features/category/ui/views/specific_categories_screen.dart';
import 'package:shop/features/home/ui/home_screen.dart';
import 'package:shop/features/my%20product/ui/view/add_product_screen.dart';
import 'package:shop/features/my%20product/ui/view/my_product_details_screen.dart';
import 'package:shop/features/my%20product/ui/view/my_product_screen.dart';
import 'package:shop/features/orders/data/manager/ordder%20cubit/order_cubit.dart';
import 'package:shop/features/orders/data/manager/order%20confirm%20cubit/order_confirm_cubit.dart';
import 'package:shop/features/orders/ui/screens/order_screen.dart';
import 'package:shop/features/product/data/cubit/product_manager_cubit.dart';
import 'package:shop/features/product/ui/screen/product_screen.dart';
import 'package:shop/features/search/ui/screen/search_screen.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => CategoryCubit(),
            child: SpacificCategoriesScreen(
              categoryName: arguments as String,
            ),
          ),
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
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => OrderCubit()..getAllorders(),
              ),
              BlocProvider(
                create: (context) => OrderConfirmCubit(),
              ),
            ],
            child: const OrderScreen(),
          ),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(),
        );
      case Routes.productScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ProductManagerCubit(),
            child: ProductScreen(
              product: arguments as ProductModel,
            ),
          ),
        );
      case Routes.myProductDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => MyProductDetailsScreen(
            product: arguments as ProductModel,
          ),
        );
      case Routes.accountScreen:
        return MaterialPageRoute(
          builder: (_) => const AccountScreen(),
        );
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
