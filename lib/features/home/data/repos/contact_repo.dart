import 'package:dartz/dartz.dart';
import 'package:khaled_protfolio/core/errors/api_failure.dart';
import 'package:khaled_protfolio/core/services/email_service.dart';


class ContactRepo {
  final EmailService _emailService;

  ContactRepo(this._emailService);

  Future<Either<Failure, String>> sendMessage({
    required String name,
    required String email,
    required String message,
  }) async {
    try {
      final result = await _emailService.sendEmail(
        name: name,
        email: email,
        message: message,
      );

      if (result) {
        return Right("Message sent successfully ✅");
      } else {
        return Left(Failure("Failed to send message ❌"));
      }
    } catch (e) {
      return Left(Failure("Unexpected Error: $e"));
    }
  }
}
