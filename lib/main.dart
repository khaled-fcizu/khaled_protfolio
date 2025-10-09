import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/services/set_up_get_it_service.dart';
import 'package:khaled_protfolio/protfolio.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpGetItService();
  runApp(const Protfolio());
  
}

