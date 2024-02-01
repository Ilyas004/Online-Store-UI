import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/general_widgets/cart_button.dart';
import 'package:online_store/ui/general_widgets/outline_custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text('My account', style: AppStyle.blackText18,),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12,),
                const Text('Activity', style: AppStyle.blackText20,),
                const SizedBox(height: 23,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CartButton(
                        title: 'Details',
                        image: profileImage,
                        color: darkColor,
                        onTap: () { _onNavigateDetailsProfilePage(context);  },
                        style: AppStyle.whiteText14,
                        foregroundColor: Colors.white),
                    CartButton(
                        title: 'Orders',
                        image: profileImage,
                        color: darkColor,
                        onTap: () {},
                        style: AppStyle.whiteText14,
                        foregroundColor: Colors.white),
                    CartButton(
                        title: 'Reviews',
                        image: profileImage,
                        color: darkColor,
                        onTap: () {},
                        style: AppStyle.whiteText14,
                        foregroundColor: Colors.white),
                  ],
                ),
                const SizedBox(height: 25,),
                const Text('Community', style: AppStyle.blackText20,),
                const SizedBox(height: 17,),
                const Row(
                  children: [
                    Icon(Icons.people_alt_outlined),
                    SizedBox(width: 8,),
                    Text('Community influencer program', style: AppStyle.blackText16,)
                  ],
                ),
                const SizedBox(height: 32,),
                const Text('Support', style: AppStyle.blackText20,),
                const SizedBox(height: 17,),
                _getSupportedWidget(),
                SizedBox(height: 33,),
                Text('Settings', style: AppStyle.blackText20,),
                SizedBox(height: 13,),
                Row(
                  children: [
                    Icon(Icons.language),
                    SizedBox(width: 8,),
                    Text('Location & Language', style: AppStyle.blackText16,),
                  ],
                ),
                Spacer(flex: 1,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 23.0),
                  child: OutlineCustomButton(
                      title: 'Log out',
                      onTap: () {}),
                )
              ],
            ),
          )
      ),
    );
  }

  void _onNavigateDetailsProfilePage(BuildContext context) {
    Navigator.of(context).pushNamed('/profile/details');
  }

  Widget _getSupportedWidget() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(Icons.contact_support),
                  SizedBox(width: 8,),
                  Text('FAQ', style: AppStyle.blackText16,),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.messenger_outline),
                  SizedBox(width: 8,),
                  Text('Chat with us', style: AppStyle.blackText16,)
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(Icons.privacy_tip_outlined),
                  SizedBox(width: 8,),
                  Text('Privacy policy', style: AppStyle.blackText16,),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(CupertinoIcons.exclamationmark_octagon_fill),
                  SizedBox(width: 8,),
                  Text('About us', style: AppStyle.blackText16,)
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            Icon(CupertinoIcons.lock),
            SizedBox(width: 8,),
            Text('Intellectual property', style: AppStyle.blackText16,)
          ],
        ),
      ],
    );
  }
}
