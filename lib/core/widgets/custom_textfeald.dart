import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFeald extends StatelessWidget {
  final String hintText;
  final bool? obscuretext;
  final Widget? suffixicon;
  const CustomTextFeald({
    super.key,
    required this.hintText,
    this.obscuretext,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        width: 300.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(88, 196, 196, 196),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: TextFormField(
            obscureText: obscuretext ?? false,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixicon,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
