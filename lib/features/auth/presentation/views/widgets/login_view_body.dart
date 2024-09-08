import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button.dart';

import 'dont_have_account_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizintalPadding,
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            const CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'البريد الإلكتروني',
              obscureText: false,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
              textInputType: TextInputType.emailAddress,
              hintText: 'كلمة المرور',
              obscureText: true,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(
              text: 'تسجيل الدخول',
              onPressed: () {},
            ),
            const SizedBox(height: 33),
            const DontHaveAnAccountWidget(),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesGoogleIcon,
              title: 'تسجيل بواسطة جوجل',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesApplIcon,
              title: 'تسجيل بواسطة أبل',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesFacebookIcon,
              title: 'تسجيل بواسطة فيسبوك',
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
