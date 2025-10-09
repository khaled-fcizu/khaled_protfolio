import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khaled_protfolio/features/home/data/repos/contact_repo.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit(this._contactRepo) : super(ContactInitial());
  final ContactRepo _contactRepo;
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  void clear() {
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    return super.close();
  }

  void sendMessage() async {
    emit(ContactLoading());
    final result = await _contactRepo.sendMessage(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      message: messageController.text.trim(),
    );
    result.fold(
      (l) => emit(ContactFailure(l.message)),
      (_) => emit(ContactSuccess()),
    );
  }
}
