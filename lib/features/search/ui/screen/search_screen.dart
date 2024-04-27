import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/core/widgets/featur_app_bar.dart';
import 'package:shop/core/widgets/text_field.dart';
import 'package:shop/features/home/data/fetch%20home%20product/fetch_home_product_cubit.dart';
import 'package:shop/features/search/manager/searchalgo.dart';
import 'package:shop/features/search/ui/widgets/search_item_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late List<ProductModel> products;
  String? Searchname;
  @override
  void initState() {
    if (Searchname == null) {
      products = BlocProvider.of<FetchHomeProductCubit>(context).products;
    }
   super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const FeaturAppBar(name: 'Search 🔍'),
            SizedBox(
              height: 30.h,
            ),
            TextFieldApp(
              icon: Icons.search_outlined,
              hintText: 'Search for product',
              onChanged: (data) {
              Searchname = data;
              products = Search.searchAlgorethem(Searchname!, context);
              setState(() {
                
              });}
            ),
            SizedBox(
              height: 20.h,
            ),
            SearchItemList(products:products ,)
          ],
        ),
      ),
    );
  }
}
