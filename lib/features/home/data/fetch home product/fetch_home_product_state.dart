part of 'fetch_home_product_cubit.dart';

@immutable
sealed class FetchHomeProductState {}

final class FetchHomeProductInitial extends FetchHomeProductState {}
final class FetchHomeProductSuccess extends FetchHomeProductState {}
final class FetchHomeProductLoding extends FetchHomeProductState {}
final class FetchHomeProductFailure extends FetchHomeProductState {
  final String erorr;

  FetchHomeProductFailure(this.erorr);
}