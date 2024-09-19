import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeBotton extends StatelessWidget {
  final String bottontext;
  final VoidCallback onpressd;
  const CustomeBotton(
      {super.key, required this.bottontext, required this.onpressd});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressd,
      child: Container(
        width: 300.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: const Color(0xFF6C63FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            bottontext,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
