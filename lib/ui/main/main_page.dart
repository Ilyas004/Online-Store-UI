import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/general_widgets/item_clothing.dart';
import 'package:online_store/ui/main/find_text_field.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  static const listWidget = <ItemClothing>[
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
    ItemClothing(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Online-Store'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 18,
            fontFamily: 'Sen',
            color: Colors.black),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 8,),
                const FindTextField(),
                const SizedBox(height: 27,),
                _categoriesWidget(),
                const SizedBox(height: 32,),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    cacheExtent: 500,
                    itemCount: listWidget.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 232,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return listWidget[index];
                    },
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget _categoriesWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image(image: allCategoriesImage),
            SizedBox(height: 5,),
            Text('Все категории', style: AppStyle.blackTextBold11,)
          ],
        ),
        Column(
          children: [
            Image(image: manCategoriesImage),
            SizedBox(height: 5,),
            Text('Мужское', style: AppStyle.grayTextBold11,)
          ],
        ),
        Column(
          children: [
            Image(image: girlCategoriesImage),
            SizedBox(height: 5,),
            Text('Женское', style: AppStyle.grayTextBold11,)
          ],
        ),
        Column(
          children: [
            Image(image: childCategoriesImage),
            SizedBox(height: 5,),
            Text('Дети', style: AppStyle.grayTextBold11,)
          ],
        ),
      ],
    );
  }
}
