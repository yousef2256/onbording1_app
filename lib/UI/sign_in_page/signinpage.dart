import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:onbording_app/core/helpers/navigators.dart';
import 'package:onbording_app/core/routes/routes.dart';
import 'package:onbording_app/core/widgets/custom_textfeald.dart';
import 'package:onbording_app/core/widgets/custome_botton.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                            Text("Welcome back",
                                style: TextStyle(fontSize: 24.sp)),
                            Text(
                              "sign in to access your account",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  // color: const Color(0xFF252525),
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 65.h),
                            //Email TextFeald
                            const CustomTextFeald(
                              hintText: "Enter your Email",
                              suffixicon: Icon(
                                Icons.mail_outline_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            //password TextFeald
                            const CustomTextFeald(
                              hintText: "Enter your Email",
                              obscuretext: true,
                              suffixicon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            //forget password TextButton
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forget Password",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Login Button at the Bottom
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomeBotton(
                      onpressd: () {
                        context.pushNamed(Routs.HomePage);
                      },
                      bottontext: "Login",
                    ),
                  ),
                  //if don't have an account & Register Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("New Member ?"),
                      TextButton(
                        onPressed: () {
                          context.pushNamed(Routs.RegisterPage);
                        },
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
            ],
          ),
        ),
      ),
    );
  }
}
