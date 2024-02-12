import 'package:flutter/material.dart';
import 'package:online_store/feach/screen_size_singleton.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/bottom_main_menu/bottom_main_menu.dart';
import 'package:online_store/ui/catalog/catalog_clothing_type_list_page.dart';
import 'package:online_store/ui/catalog/catalog_list_page.dart';
import 'package:online_store/ui/checkout/checkout_page.dart';
import 'package:online_store/ui/detail_info/detail_info_page.dart';
import 'package:online_store/ui/filters/filters_page.dart';
import 'package:online_store/ui/login/sign_in_page.dart';
import 'package:online_store/ui/main/main_page.dart';
import 'package:online_store/ui/payment_successful/payment_successful_page.dart';
import 'package:online_store/ui/profile/details/details_profile_page.dart';
import 'package:online_store/ui/profile/edit_info/edit_info_profile_page.dart';
import 'package:online_store/ui/profile/main/profile_page.dart';
import 'package:online_store/ui/registration/registration_page.dart';
import 'package:online_store/ui/shopping_cart/shopping_cart_page.dart';
import 'package:online_store/ui/sign_up/sign_up_page.dart';
import 'package:online_store/ui/size_list/size_list_page.dart';
import 'package:online_store/ui/success_registration/success_registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    _getSizeScreen(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        '/auth/registration': (context) => const RegistrationPage(),
        '/auth/login': (context) => const SignInPage(),
        '/auth/signup': (context) => const SignUpPage(),
        '/auth/success': (context) => const SuccessRegistrationPage(),
        '/main': (context) => const MainPage(),
        '/catalog': (context) => const CatalogListPage(),
        '/bottom_main_menu': (context) => const BottomMainMenu(),
        '/catalog/type_list': (context) => const CatalogClothingTypeList(),
        '/detail_info': (context) => const DetailInfoPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/payment_successful': (context) => const PaymentSuccessfulPage(),
        '/profile/details': (context) => const DetailsProfilePage(),
        '/profile/edit_info': (context) => const EditInfoProfilePage(),
        '/catalog/filters': (context) => const FiltersPage(),
        '/size_list': (context) => const SizeListPage()
      },

      initialRoute: '/auth/registration',
    );
  }

  void _getSizeScreen(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    ScreenSizeSingleton.instance.screenHeight = screenHeight;
  }
}
