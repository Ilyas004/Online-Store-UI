import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/general_widgets/custom_button.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  const PaymentSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: successImage),
                  const SizedBox(height: 22,),
                  const Text('Payment successful!', style: AppStyle.bigTitleStyle,),
                  const SizedBox(height: 8,),
                  const SizedBox(
                    width: 240,
                    child: Text(
                      'Order number: 24587745633248 Thank you for shopping!',
                      style: AppStyle.grayText16,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 52,),
                  CustomButton(
                      title: 'Continue',
                      onTap: () { _onNavigatePop(context); },
                      image: null,
                      backgroundColor: Colors.black,
                      textColor: Colors.white)
                ],
              ),
            ),
          )
      ),
    );
  }

  void _onNavigatePop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
