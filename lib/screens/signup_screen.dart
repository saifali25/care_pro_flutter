import 'package:care_pro_flutter/constants/colors.dart';
import 'package:care_pro_flutter/constants/images.dart';
import 'package:care_pro_flutter/screens/appointments_list_screen.dart';
import 'package:care_pro_flutter/widgets/app_text.dart';
import 'package:care_pro_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: Image.asset(AppImages.logo)),
                      SizedBox(
                        height: 10.h,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Welcome back to ",
                            style: TextStyle(
                                color: AppColors.welcomeTextColor1,
                                fontSize: 20.sp),
                            children: [
                              TextSpan(
                                text: "Cool Pro!",
                                style: TextStyle(
                                  color: AppColors.welcomeTextColor2,
                                  fontSize: 15.sp,
                                ),
                              )
                            ]),
                      ),
                      AppText(
                        text: "Join 1+ millions doctors for free",
                        color: AppColors.welcomeSubText,
                        fontSize: 15.sp,
                      ),
                      SizedBox(height: 30.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: AppText(
                            text: "Email Address",
                            color: AppColors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      const AppTextFormField(
                        hintText: "lehieuds@gmail.com",
                        isDense: true,
                      ),
                      SizedBox(height: 24.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: AppText(
                            text: "Mobile Phone",
                            color: AppColors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      const AppTextFormField(
                        hintText: "+966 55 41 847",
                        isDense: true,
                      ),
                      SizedBox(height: 24.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: AppText(
                            text: "Password",
                            color: AppColors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      const AppTextFormField(
                        hintText: "*********",
                        isDense: true,
                        isPassword: true,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  "By clicking Sign Up you are agreeing to the ",
                              style: TextStyle(
                                  color: AppColors.welcomeTextColor1,
                                  fontSize: 15.sp),
                              children: [
                                TextSpan(
                                  text: "Terms of use",
                                  style: TextStyle(
                                      color: AppColors.welcomeTextColor2,
                                      fontSize: 15.sp),
                                ),
                                TextSpan(
                                  text: " & ",
                                  style: TextStyle(
                                      color: AppColors.welcomeTextColor1,
                                      fontSize: 15.sp),
                                ),
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                      color: AppColors.welcomeTextColor2,
                                      fontSize: 15.sp),
                                )
                              ]),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AppointmentsScreen())),
                        child: Container(
                          height: 60.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Center(
                            child: AppText(
                                text: "Sign Up",
                                color: AppColors.white,
                                fontSize: 18.sp),
                          ),
                        ),
                      ),
                      SizedBox(height: 35.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 2.h,
                            width: 71.w,
                            color: AppColors.black,
                          ),
                          SizedBox(width: 8.w),
                          AppText(
                            text: " Or Continue ",
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                          SizedBox(width: 8.w),
                          Container(
                            height: 2.h,
                            width: 71.w,
                            color: AppColors.black,
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 168.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.black,
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          AppImages.apple,
                                        ),
                                        SizedBox(width: 5.w),
                                        AppText(
                                          text: "Continue With",
                                          color: AppColors.white,
                                          fontSize: 15.sp,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 29.w),
                              InkWell(
                                onDoubleTap: () {},
                                child: Container(
                                    height: 60.h,
                                    width: 50.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                    child: Center(
                                        child: Image.asset(AppImages.google,
                                            height: 22.h))),
                              ),
                              SizedBox(width: 29.w),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 60.h,
                                    width: 50.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.facebookBlue,
                                    ),
                                    child: Center(
                                        child: Image.asset(AppImages.facebook,
                                            height: 22.h))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
