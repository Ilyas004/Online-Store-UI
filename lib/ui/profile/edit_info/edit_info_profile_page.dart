import 'package:flutter/material.dart';
import 'package:online_store/feach/screen_size_singleton.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/general_widgets/custom_button.dart';
import 'package:online_store/ui/general_widgets/outline_custom_button.dart';
import 'package:online_store/ui/profile/edit_info/edit_text.dart';

class EditInfoProfilePage extends StatelessWidget {
  const EditInfoProfilePage({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 17,),
                  const Text('Account information', style: AppStyle.blackText20,),
                  const SizedBox(height: 24,),
                  const EditText(hintText: 'Имя', inputType: TextInputType.name,),
                  const SizedBox(height: 11,),
                  const EditText(hintText: 'Фамилия', inputType: TextInputType.name,),
                  const SizedBox(height: 11,),
                  const EditText(hintText: 'Дата рождения', inputType: TextInputType.datetime,),
                  const SizedBox(height: 11,),
                  const EditText(hintText: 'Страна', inputType: TextInputType.name,),
                  const SizedBox(height: 11,),
                  const EditText(hintText: 'Город', inputType: TextInputType.name,),
                  const SizedBox(height: 11,),
                  const EditText(hintText: 'Номер телефон', inputType: TextInputType.phone,),
                  const SizedBox(height: 80,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                            title: 'Save',
                            onTap: () {},
                            image: null,
                            backgroundColor: darkColor,
                            textColor: Colors.white),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: OutlineCustomButton(
                            title: 'Cancel',
                            onTap: () { _onPopNavigate(context); }),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }

  void _onPopNavigate(BuildContext context) {
    Navigator.of(context).pop();
  }
}
