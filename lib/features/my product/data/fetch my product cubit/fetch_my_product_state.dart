part of 'fetch_my_product_cubit.dart';

@immutable
sealed class FetchMyProductState {}

final class FetchMyProductInitial extends FetchMyProductState {}
final class FetchMyProductloding extends FetchMyProductState {}
final class FetchMyProductsuccsed extends FetchMyProductState {}
final class FetchMyProductfailer extends FetchMyProductState {
  final String error;

  FetchMyProductfailer(this.error);
}