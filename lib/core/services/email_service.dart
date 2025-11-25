abstract class EmailService {
  Future<bool> sendEmail({
    required String name,
    required String email,
    required String message,
  });
}
