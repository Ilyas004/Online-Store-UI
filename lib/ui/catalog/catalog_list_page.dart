import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_store/ui/catalog/catalog_item.dart';

class CatalogListPage extends StatefulWidget {
  const CatalogListPage({super.key});

  @override
  State<CatalogListPage> createState() => _CatalogListPageState();
}

class _CatalogListPageState extends State<CatalogListPage> {
  static const listWidgets = <Widget> [
    CatalogItem(title: 'Футболка',),
    CatalogItem(title: 'Футболка'),
    CatalogItem(title: 'Футболка'),
    CatalogItem(title: 'Футболка'),
    CatalogItem(title: 'Футболка'),
    CatalogItem(title: 'Футболка'),
    CatalogItem(title: 'Футболка'),
    CatalogItem(title: 'Футболка'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 25,),
                GridView.builder(
                  shrinkWrap: true,
                  cacheExtent: 500,
                  itemCount: listWidgets.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 205,),
                  itemBuilder: (BuildContext context, int index) {
                    return listWidgets[index];
                  },
                )
              ],
            ),
          )),
    );
  }
}
