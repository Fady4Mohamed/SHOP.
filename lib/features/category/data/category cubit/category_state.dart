part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}
final class CategorySuccess extends CategoryState {}
final class CategoryLoding extends CategoryState {}
final class CategoryFailure extends CategoryState {
   final String erorr;

  CategoryFailure(this.erorr);
}