import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mymovies/core/app_colors.dart';
import 'package:mymovies/core/app_styles.dart';
import 'package:mymovies/core/assets_manager.dart';
import 'package:mymovies/core/widgets/custom_elevated_buttom.dart';
import 'package:mymovies/core/widgets/custom_text_form_field.dart';
import 'package:mymovies/l10n/app_localizations.dart';
import 'package:mymovies/sliding_switch/sliding_switch.dart';

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
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05),
              Image.asset(AssetsManager.loginSplashScreen),
              SizedBox(height: 70.h),
              CustomTextFormField(
                controller: emailController,
                hintText: AppLocalizations.of(context)!.email,
                prefixIcon: Image.asset(AssetsManager.iconMessage),
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextFormField(
                controller: emailController,
                hintText: AppLocalizations.of(context)!.password,
                prefixIcon: Image.asset(AssetsManager.iconPassword),
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppLocalizations.of(context)!.forget_password,
                    style: AppStyles.regular14RobotoYellow,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButtom(
                  onPressed: () {},
                  text: AppLocalizations.of(context)!.login,
                  textStyle: AppStyles.regular20RobotoDarkGrey,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${AppLocalizations.of(context)!.dont_have_account} ? ",
                      style: AppStyles.regular14RobotoWhite,
                    ),
                    Text(
                      AppLocalizations.of(context)!.create_one,
                      style: AppStyles.bold14RobotoYellow,
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.yellow,
                      thickness: 2,
                      indent: size.width * 0.04,
                      endIndent: size.width * 0.04,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.or,
                    style: AppStyles.regular15RobotoWhite.copyWith(
                      color: AppColors.yellow,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.yellow,
                      thickness: 2,
                      indent: size.width * 0.04,
                      endIndent: size.width * 0.04,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              CustomElevatedButtom(
                onPressed: () {},
                hasIcon: true,
                text: "",
                childIconWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetsManager.iconGoogle),
                    SizedBox(width: size.width * 0.03),
                    Text(
                      AppLocalizations.of(context)!.login_with_google,
                      style: AppStyles.regular16RobotoDarkGrey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              SlidingSwitch(
                firstImage: Image.asset(AssetsManager.americaIcon),
                secondImage: Image.asset(AssetsManager.egyptIcon),
                onToggle: (index) {
                  setState(() {
                    print(index);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
