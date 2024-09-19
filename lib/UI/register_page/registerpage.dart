import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:onbording_app/core/helpers/navigators.dart';
import 'package:onbording_app/core/routes/routes.dart';
import 'package:onbording_app/core/widgets/custom_textfeald.dart';
import 'package:onbording_app/core/widgets/custome_botton.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Hide the keyboard when user taps anywhere outside
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 30.h),
                            //SVG photo
                            const Image(
                              width: 207,
                              image:
                                  Svg('assets/undraw_adventure_map_hnin 2.svg'),
                            ),
                            //welcome back text & sign in to access your account
                            Text("Get Started",
                                style: TextStyle(fontSize: 24.sp)),
                            Text(
                              "by creating a free account.",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xFF252525),
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 65.h),
                            //Email TextFeald
                            const CustomTextFeald(
                              hintText: "Full name",
                              suffixicon: Icon(
                                Icons.person_3_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            //password TextFeald
                            const CustomTextFeald(
                              hintText: "Valid email",
                              suffixicon: Icon(
                                Icons.mail_outline_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            const CustomTextFeald(
                              hintText: "Phone number",
                              suffixicon: Icon(
                                Icons.phone_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            const CustomTextFeald(
                              hintText: "Strong password",
                              obscuretext: true,
                              suffixicon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Login Button at the Bottom
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Column(
                  children: [
                    CustomeBotton(
                      onpressd: () {
                        context.pushNamed(Routs.HomePage);
                      },
                      bottontext: "Create Account",
                    ),
                    //if don't have an account & Register Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("New Member ?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
