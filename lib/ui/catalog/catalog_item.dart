import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';

class CatalogItem extends StatelessWidget {
  final String title;

  const CatalogItem({
    super.key,
    required this.title,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 170,
                width: 164,
                child: const Image(image: photoPeopleImage)),
            const SizedBox(height: 8,),
            Text(title, style: AppStyle.blackText14,)
          ],
        ),
        Material(
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () { _onNavigateCatalogClothingList(context); },
          ),
        )
      ],
    );
  }

  void _onNavigateCatalogClothingList(BuildContext context) {
    Navigator.of(context).pushNamed('/catalog/type_list');
  }
}
