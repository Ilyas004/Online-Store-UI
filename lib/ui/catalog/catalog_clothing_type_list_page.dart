import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/catalog/settingButton.dart';
import 'package:online_store/ui/general_widgets/item_clothing.dart';

class CatalogClothingTypeList extends StatefulWidget {
  const CatalogClothingTypeList({super.key});

  @override
  State<CatalogClothingTypeList> createState() => _CatalogClothingTypeListState();
}

class _CatalogClothingTypeListState extends State<CatalogClothingTypeList> {
  static const listWidgets = <ItemClothing>[
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text('Каталог', style: TextStyle(fontSize: 18, fontFamily: 'Sen'),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _buildSettingFilter(),
            const SizedBox(height: 27,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GridView.builder(
                shrinkWrap: true,
                cacheExtent: 500,
                itemCount: listWidgets.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 232,),
                itemBuilder: (BuildContext context, int index) {
                  return listWidgets[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildSettingFilter() {
    return Row(
            children: [
              SettingButton(
                  onTap: () { _onNavigateFiltersPage(context); },
                  title: 'Filter',
                  image: filterImage,
                  border: const Border(
                      right: BorderSide(color: grayColor, width: 0.5),
                      bottom: BorderSide(color: grayColor, width: 0.5)
                  )),
              SettingButton(
                  onTap: () {},
                  title: 'Popular',
                  image: settingsFilterImage,
                  border: const Border(
                      bottom: BorderSide(color: grayColor, width: 0.5)
                  )),
            ],
          );
  }

  void _onNavigateFiltersPage(BuildContext context) {
    Navigator.of(context).pushNamed('/catalog/filters');
  }
}
