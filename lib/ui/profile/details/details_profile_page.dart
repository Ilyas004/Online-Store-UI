import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/general_widgets/outline_custom_button.dart';

class DetailsProfilePage extends StatelessWidget {
  const DetailsProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Details', style: AppStyle.blackText18,),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16,),
              const Text('Account information', style: AppStyle.blackText20,),
              const SizedBox(height: 16,),
              const Text('Name: Kawasaki, Kago, Estripper', style: AppStyle.blackText16,),
              const SizedBox(height: 16,),
              const Text('Date of birthday: -', style: AppStyle.blackText16,),
              const SizedBox(height: 16,),
              const Text('Address: Madagaskar', style: AppStyle.blackText16,),
              const SizedBox(height: 16,),
              const Text('Phone: +7 (999) 999-99-99', style: AppStyle.blackText16,),
              const Spacer(flex: 1,),
              OutlineCustomButton(
                  title: 'Edit',
                  onTap: () { _onNavigateEditInfoProfilePage(context); }),
              const SizedBox(height: 16,),
              OutlineCustomButton(title: 'Change password', onTap: () {}),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }

  void _onNavigateEditInfoProfilePage(BuildContext context) {
    Navigator.of(context).pushNamed('/profile/edit_info');
  }
}
