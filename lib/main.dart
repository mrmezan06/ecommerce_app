import 'package:ecommerce_app/ui/loginScreen.dart';
import 'package:ecommerce_app/ui/registrationScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(double.maxFinite, double.maxFinite),
        builder: () {
          return MaterialApp(
            title: 'Ecommerce App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const RegistrationScreen(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
