import 'package:ecommerce_app/const/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_orange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Ecommerce App',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 44),),
              SizedBox(height: 20,),
              CircularProgressIndicator(color: Colors.white,),
            ],
          ),
        ),
      )
    );
  }
}
