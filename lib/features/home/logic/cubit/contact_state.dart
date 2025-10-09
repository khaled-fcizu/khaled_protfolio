part of 'contact_cubit.dart';

sealed class ContactState {}

final class ContactInitial extends ContactState {}
final class ContactLoading extends ContactState {}
final class ContactFailure extends ContactState {
  final String message;
  ContactFailure(this.message);
}
final class ContactSuccess extends ContactState {}
