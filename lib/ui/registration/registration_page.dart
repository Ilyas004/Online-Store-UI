import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/general_widgets/custom_button.dart';
import 'package:online_store/ui/general_widgets/decorade_divider.dart';
import 'package:online_store/ui/general_widgets/text_transition.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 140,),
                const Text('Online-Store', style: AppStyle.bigTitleStyle,),
                const Text(
                  'Please log in or sign up to continue shopping',
                  style: AppStyle.grayText16,),
                const SizedBox(height: 46,),
                CustomButton(
                  title: 'Continue with Google',
                  backgroundColor: CupertinoColors.extraLightBackgroundGray,
                  textColor: Colors.black,
                  image: googleLogoImage,
                  onTap: () {},
                ),
                const SizedBox(height: 14,),
                CustomButton(
                  title: 'Continue with Facebook',
                  backgroundColor: blueColor,
                  textColor: Colors.white,
                  image: facebookLogoImage,
                  onTap: () {},),
                const SizedBox(height: 14,),
                CustomButton(
                  title: 'Continue with Apple',
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  image: appleLogoImage,
                  onTap: () {},),
                const SizedBox(height: 32,),
                const DecoratedDivider(text: 'or'),
                const SizedBox(height: 32,),
                CustomButton(
                    title: 'Sign in with password',
                    onTap: () { _onNavigateSignInPage(context); },
                    image: null,
                    backgroundColor: Colors.black,
                    textColor: Colors.white),
                const SizedBox(height: 35,),
                TextTransition(
                    text: 'Don’t have an account? ',
                    clickableText: 'Sign up',
                    onTap: () { _onNavigateSignUnPage(context); })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onNavigateSignInPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/auth/login');
  }

  void _onNavigateSignUnPage(BuildContext context) {
    Navigator.of(context).pushNamed('/auth/signup');
  }
}
