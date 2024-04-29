import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'product_manager_state.dart';

class ProductManagerCubit extends Cubit<ProductManagerState> {
  ProductManagerCubit() : super(ProductManagerInitial());
   int amount=1;
}
