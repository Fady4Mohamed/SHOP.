part of 'order_confirm_cubit.dart';

@immutable
sealed class OrderConfirmState {}
final class OrderInitial extends OrderConfirmState {}

final class Ordersuccess extends OrderConfirmState {}

final class Orderloding extends OrderConfirmState {}

final class OrderFailure extends OrderConfirmState {
  final String error;

  OrderFailure({required this.error});
}
