import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mymovies/core/app_colors.dart';
import 'package:mymovies/core/app_styles.dart';
import 'package:mymovies/core/assets_manager.dart';
import 'package:mymovies/core/widgets/custom_text_form_field.dart';
import 'package:mymovies/l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.nearBlack,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03
          ),
          child: Column(
            children: [
              SizedBox(height: 67.h,) ,
              Image.asset(AssetsManager.loginSplashScreen) ,
              SizedBox(height: 70.h,),
              CustomTextFormField(
                controller: emailController ,
                hintText: AppLocalizations.of(context)!.email,
                prefixIcon: Image.asset(AssetsManager.iconMessage),
              ) ,
              SizedBox(height: size.height * 0.02,),
               CustomTextFormField(
                controller: emailController ,
                hintText: AppLocalizations.of(context)!.password,
                prefixIcon: Image.asset(AssetsManager.iconPassword),
                suffixIcon: Icon(Icons.visibility_off , color: AppColors.whiteColor,),
              ) ,
              SizedBox(),

            ],
          ),
        ),
      ),
    );
  }
}