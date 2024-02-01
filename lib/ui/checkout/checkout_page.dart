import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/checkout/payment_card.dart';
import 'package:online_store/ui/general_widgets/custom_button.dart';
import 'package:online_store/ui/general_widgets/custom_radio.dart';

enum SingingCharacter { MIR, TINKOFF, MASTER_CART }

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {

  SingingCharacter _character = SingingCharacter.MIR;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16,),
              const Text('Payment', style: AppStyle.blackText20,),
              const SizedBox(height: 16,),
              PaymentMethod(
                title: 'MIR',
                image: googleLogoImage,
                value: SingingCharacter.MIR
              ),
              const SizedBox(height: 12,),
              PaymentMethod(
                title: 'TINKOFF',
                image: googleLogoImage,
                value: SingingCharacter.TINKOFF
              ),
              const SizedBox(height: 12,),
              PaymentMethod(
                title: 'MASTER CART',
                image: googleLogoImage,
                value: SingingCharacter.MASTER_CART
              ),
              const SizedBox(height: 39,),
              const PaymentCard(),
              const SizedBox(height: 32,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Shipping information', style: AppStyle.blackText20,),
                  InkWell(
                    onTap: () {},
                    child: const Text('Edit', style: AppStyle.grayText16,)),
                ],
              ),
              const SizedBox(height: 16,),
              const Text('Dmitriy Divnov', style: AppStyle.grayText16,),
              const SizedBox(height: 6,),
              const Text('Brest, Belarus', style: AppStyle.grayText16,),
              const SizedBox(height: 6,),
              const Text('+375 (29) 749-19-24', style: AppStyle.grayText16,),
              const SizedBox(height: 32,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: AppStyle.blackText20,),
                  Text('119.00\$', style: AppStyle.blackText20,)
                ],
              ),
              SizedBox(height: 64,),
              CustomButton(
                  title: 'Pay',
                  onTap: () { _onNavigatePaymentSuccessfulPage(context); },
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  image: null,)
            ],
          ),
        ),
      ),
    );
  }

  void _onNavigatePaymentSuccessfulPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/payment_successful');
  }

  Widget PaymentMethod({
    required String title,
    required AssetImage image,
    required SingingCharacter value
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const SizedBox(
        height: 48,
        width: 48,
        child: Placeholder(),),
      title: Text(title, style: AppStyle.blackText16,),
      trailing: CustomRadio(
        value: value,
        groupValue: _character,
        onChanged: (SingingCharacter? value) {
          setState(() {
            _character = value!;
          });
        },
      ),
    );
  }
}

