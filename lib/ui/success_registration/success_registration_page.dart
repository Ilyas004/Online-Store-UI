import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/general_widgets/custom_button.dart';

class SuccessRegistrationPage extends StatelessWidget {
  const SuccessRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: successImage),
              const SizedBox(height: 22,),
              const Text('Successful!', style: AppStyle.bigTitleStyle,),
              const SizedBox(height: 4,),
              const Text(
                'You have successfully registered\n'
                'in our app and start working in it.',
                textAlign: TextAlign.center,
                style: AppStyle.grayText16,),
              const SizedBox(height: 64,),
              CustomButton(
                  title: 'Start shopping',
                  onTap: () { _onNavigateMainBottomMenu(context); },
                  image: null,
                  backgroundColor: Colors.black,
                  textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }

  void _onNavigateMainBottomMenu(BuildContext context) {
    Navigator.of(context).pushNamed('/bottom_main_menu');
  }
}
