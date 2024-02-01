import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172,
      child: Card(
        margin: EdgeInsets.zero,
        color: darkColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 24, right: 24, top: 10,),
              title: Text('**** **** **** 8207', style: AppStyle.whiteText16,),
              trailing: Icon(Icons.visibility_outlined, color: Colors.white,),
            ),
            Spacer(flex: 1,),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text('Name on card', style: AppStyle.whiteText12,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dmitiry Divnov', style: AppStyle.whiteText16,),
                  SizedBox(height: 21, width: 34, child: Placeholder(),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
