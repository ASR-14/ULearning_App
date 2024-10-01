import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar("Sign Up"),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: reusableText(
                        "Enter your details below and free sign up")),
                Container(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  margin: EdgeInsets.only(top: 36.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("User name"),
                      buildTextField(
                        "Enter your user name",
                        "name",
                        "user",
                        (value) {
                          // context.read<SignInBlocs>().add(EmailEvent(value));
                        },
                      ),
                      reusableText("Email"),
                      buildTextField(
                          "Enter your email address", "email", "user", (value) {
                        // context.read<SignInBlocs>().add(PasswordEvent(value));
                      }),
                      reusableText("Password"),
                      buildTextField("Enter your password", "password", "lock",
                          (value) {
                        // context.read<SignInBlocs>().add(PasswordEvent(value));
                      }),
                      reusableText("Confirm password"),
                      buildTextField(
                          "Enter your Confirm Password", "password", "lock",
                          (value) {
                        // context.read<SignInBlocs>().add(PasswordEvent(value));
                      }),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 25.w),
                    child: reusableText(
                        "Enter your details below and free sign up")),
                buildLogInAndRegButton(
                  "Sign Up",
                  "login",
                  () {
                    // Navigator.of(context).pushNamed("register");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
