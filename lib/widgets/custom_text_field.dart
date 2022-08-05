import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class AppTextFormField extends StatefulWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final bool isPassword;
  final FontWeight? fontWeight;
  final TextInputType? keyboardType;
  final bool? isDense;

  const AppTextFormField({
    Key? key,
    required this.hintText,
    this.hintStyle,
    this.isPassword = false,
    this.fontWeight,
    this.keyboardType,
    this.isDense,
  }) : super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 343.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: AppColors.accent, width: 1.5.w)),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              cursorWidth: 1,
              cursorColor: AppColors.black,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16.sp,
                fontWeight: widget.fontWeight,
              ),
              obscureText: isPasswordVisible,
              obscuringCharacter: "*",
              keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                isDense: widget.isDense,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
                //contentPadding: const EdgeInsets.all(10),
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: widget.hintStyle ??
                    TextStyle(
                        color: AppColors.black,
                        fontWeight: widget.fontWeight,
                        fontSize: 16.sp),
              ),
            ),
          ),
          if (widget.isPassword)
            if (widget.isPassword)
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                child: Icon(
                  isPasswordVisible
                      ? CupertinoIcons.eye_slash
                      : CupertinoIcons.eye,
                  color: AppColors.grey,
                  size: 25.sp,
                ),
              ),
        ],
      ),
    );
  }
}
