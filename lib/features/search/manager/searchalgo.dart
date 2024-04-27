import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/models/product_model.dart';
import 'package:shop/features/home/data/fetch%20home%20product/fetch_home_product_cubit.dart';

class Search{

 static List<ProductModel> searchAlgorethem(String productname,BuildContext context){

 List<ProductModel> products= BlocProvider.of<FetchHomeProductCubit>(context).products;
  List<ProductModel> searhedProducts=[];
  for(int i=0;i<products.length;i++){
    if(products[i].name.toLowerCase().contains(productname.toLowerCase())){
      searhedProducts.add(products[i]);
    }

  }
 return searhedProducts;
  }
}