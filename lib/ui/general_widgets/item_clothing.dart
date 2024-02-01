import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/general_widgets/button_buy.dart';

class ItemClothing extends StatefulWidget {
  const ItemClothing({super.key});

  @override
  State<ItemClothing> createState() => _ItemClothingState();
}

class _ItemClothingState extends State<ItemClothing> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () { _onNavigateDetailInfoPage(context); },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 170,
                width: 164,
                child: const Image(image: photoPeopleImage)),
              const Positioned(
                top: 19,
                left: 10,
                child: Row(
                  children: [
                    Image(image: starImage),
                    Text(
                      '4.8',
                      style: TextStyle(fontSize: 10, fontFamily: 'Bold-Sen'),),
                  ],
                ),
              ),
              const Positioned(
                right: 14,
                  top: 10,
                  child: Image(image: favoriteImage)),
              Column(
                children: [
                  const SizedBox(height: 157,),
                  Center(
                      child: ButtonBuy(onTap: () {})),
                ],
              ),
            ],
          ),
          const SizedBox(height: 9,),
          const Text('Men Full Sleeve Shirt', style: AppStyle.blackText14,),
          const SizedBox(height: 4,),
          const Text('\$30.49', style: AppStyle.blackTextBold16,),
        ],
      ),
    );
  }

  void _onNavigateDetailInfoPage(BuildContext context) {
    Navigator.of(context).pushNamed('/detail_info');
  }
}
