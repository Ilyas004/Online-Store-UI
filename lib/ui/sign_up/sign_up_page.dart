import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/feach/screen_size_singleton.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/general_widgets/custom_button.dart';
import 'package:online_store/ui/general_widgets/custom_image_button.dart';
import 'package:online_store/ui/general_widgets/decorade_divider.dart';
import 'package:online_store/ui/general_widgets/input_password_text.dart';
import 'package:online_store/ui/general_widgets/input_text.dart';
import 'package:online_store/ui/general_widgets/text_transition.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: OverflowBox(
              maxHeight: ScreenSizeSingleton.instance.screenHeight,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 140,),
                    const Text('Create Your Account', style: AppStyle.bigTitleStyle,),
                    const SizedBox(height: 40,),
                    const InputText(
                        prefIcon: Icons.mail,
                        labelText: 'Email',
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(height: 16,),
                    const InputPasswordText(),
                    const SizedBox(height: 95,),
                    CustomButton(
                        title: 'Sign up',
                        onTap: () { _onNavigateSuccessRegistrationPage(context); },
                        image: null,
                        backgroundColor: Colors.black,
                        textColor: Colors.white),
                    const SizedBox(height: 23,),
                    const DecoratedDivider(text: 'or continue with'),
                    const SizedBox(height: 32,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageButton(
                          image: googleLogoImage,
                          onTap: () {},
                          imageColor: null,),
                        const SizedBox(width: 13,),
                        CustomImageButton(
                          image: facebookLogoImage,
                          onTap: () {},
                          imageColor: blueColor,),
                        const SizedBox(width: 13,),
                        CustomImageButton(
                          image: appleLogoImage,
                          onTap: () {},
                          imageColor: Colors.black,),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    TextTransition(
                        text: 'Already have an account? ',
                        clickableText: 'Sign in',
                        onTap: () { _onNavigateSignInPage(context); }),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }

  void _onNavigateSignInPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/auth/login');
  }

  void _onNavigateSuccessRegistrationPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/auth/success');
  }
}
