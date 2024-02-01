import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/general_widgets/goods_counter.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: lightGrayColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 16, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 105,
                    height: 120,
                    child: Placeholder()
                  ),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 162,
                        child: Text(
                          'CLAUDETTE CORSET SHIRT DRESS IN WHITE',
                          style: AppStyle.blackText14,
                          maxLines: 4,
                        ),
                      ),
                      SizedBox(height: 9,),
                      //вместо XS должны быть данные с сервера
                      Text('Size: XS', style: AppStyle.blackText14,),
                      SizedBox(height: 4,),
                      Text('79.95\$', style: AppStyle.strikethroughGrayText14,),
                      Text('65.00\$', style: AppStyle.redText16,)
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                right: 2,
                child: IconButton(
                  padding: EdgeInsets.zero,

                  splashRadius: 15,
                  onPressed: () {},
                  icon: const Image(image: crossImage),)
            ),
            Positioned(
              bottom: 16,
              right: 1,
              child: GoodsCounterWidget()
            )
          ],
        ),
      ),
    );
  }
}
