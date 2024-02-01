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

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isChecked = false;

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
                  const Text('Sign In', style: AppStyle.bigTitleStyle,),
                  const SizedBox(height: 28,),
                  const InputText(
                    prefIcon: Icons.mail,
                    labelText: 'Email',
                    textInputType: TextInputType.emailAddress,),
                  const SizedBox(height: 16,),
                  const InputPasswordText(),
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.scale(
                        scale: 1.4,
                        child: Checkbox(
                          activeColor: Colors.transparent, // Цвет рамки при выбранном состоянии
                          checkColor: Colors.black, // Цвет галочки
                          side: const BorderSide(width: 1.8),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          splashRadius: 10,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      const Text('Remember me', style: AppStyle.blackText16,)
                    ],
                  ),
                  const SizedBox(height: 48,),
                  CustomButton(
                      title: 'Sign in',
                      onTap: () { _onNavigateMainBottomMenu(context); },
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
                      text: 'Don’t have an account? ',
                      clickableText: 'Sign up',
                      onTap: () { _onNavigateSignUpPage(context); })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onNavigateSignUpPage(BuildContext context) {
    Navigator.of(context).pushNamed('/auth/signup');
  }

  void _onNavigateMainBottomMenu(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/bottom_main_menu');
  }
}
