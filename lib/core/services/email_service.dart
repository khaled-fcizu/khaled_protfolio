import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:khaled_protfolio/core/constants/constants.dart';

class EmailService {
  Future<bool> sendEmail({
    required String name,
    required String email,
    required String message,
  }) async {
    const url = 'https://api.emailjs.com/api/v1.0/email/send';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'origin': 'http://localhost', // مهم عشان EmailJS يسمح بالـ request
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': kServiceId,
          'template_id': kTemplateId,
          'user_id': kPublicKey,
          'template_params': {
            'name': name,
            'email': email,
            'message': message,
            'to_email': 'khaledbadr.dev@gmail.com', // بريدك الشخصي
          },
        }),
      );

      // ✅ نجاح
      if (response.statusCode == 200) {
        return true;
      } else {
        print("EmailJS Error: ${response.statusCode} | ${response.body}");
        return false;
      }
    } catch (e) {
      print("Email sending failed: $e");
      return false;
    }
  }
}
