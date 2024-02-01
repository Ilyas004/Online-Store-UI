import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/general_widgets/cart_button.dart';

class TableTotalPrice extends StatelessWidget {
  const TableTotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: lightGrayColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0,
            left: 16,
            right: 16,
            bottom: 16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:', style: AppStyle.blackText20,),
                Text('119.0\$', style: AppStyle.blackText20,)
              ],
            ),
            const SizedBox(height: 4,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Saving Applied', style: AppStyle.grayText14,),
                Text('14.95\$', style: AppStyle.grayText14,)
              ],
            ),
            const SizedBox(height: 16,),
            CartButton(
                title: 'Checkout',
                image: shoppingCartImage,
                color: Colors.black,
                style: AppStyle.whiteText16,
                onTap: () { _onNavigateCheckoutPage(context); },
                foregroundColor: Colors.white)
          ],
        ),
      ),
    );
  }

  void _onNavigateCheckoutPage(BuildContext context) {
    Navigator.of(context).pushNamed('/checkout');
  }
}
