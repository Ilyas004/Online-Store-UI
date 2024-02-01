import 'package:flutter/material.dart';
import 'package:online_store/ui/general_widgets/item_clothing.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
        title: Text('Избранные', style: TextStyle(fontSize: 18, fontFamily: 'Sen'),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
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

}
