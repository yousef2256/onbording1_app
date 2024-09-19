import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To Home",
                style: TextStyle(fontSize: 24.sp),
              ),
              SizedBox(height: 30.h),
              Image(
                width: 300.w,
                image: const Svg('assets/undraw_welcome_cats_thqn 1.svg'),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Thank you all for your hard work during the course. It was great to work with you, and I'm proud of everything you've done.  Congratulations on finishing! I wish you success in your future.",
                  style: TextStyle(fontSize: 14.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Best Wishes, \n Mohamed Adel (Soda)",
                style: TextStyle(fontSize: 18.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
