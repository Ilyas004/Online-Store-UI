import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/detail_info/page_images.dart';
import 'package:online_store/ui/detail_info/raiting_widget.dart';
import 'package:online_store/ui/general_widgets/cart_button.dart';
import 'package:online_store/ui/general_widgets/filter_button.dart';
import 'package:online_store/ui/general_widgets/goods_counter.dart';

class DetailInfoPage extends StatefulWidget {
  const DetailInfoPage({super.key});

  @override
  State<DetailInfoPage> createState() => _DetailInfoPageState();
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [
              const PageImages(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 272,
                          child: Text(
                            'CLAUDETTE CORSET SHIRT DRESS IN WHITE',
                            maxLines: null,

                            style: AppStyle.blackText20,
                          ),
                        ),
                        Image(image: favoriteIcImage)
                      ],
                    ),
                    const SizedBox(height: 22,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const RaitingWidget(),
                        _getPriceWidget()
                      ],
                    ),
                    const SizedBox(height: 40,),
                    const Text('Size', style: AppStyle.blackText20,),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FilterButton(onTap: () {}, text: 'XS'),
                        FilterButton(onTap: () {}, text: 'S'),
                        FilterButton(onTap: () {}, text: 'M'),
                        FilterButton(onTap: () {}, text: 'L'),
                        FilterButton(onTap: () {}, text: 'XL'),
                        InkWell(
                          onTap: () {},
                          child: const Text('More...', style: AppStyle.grayText14,))
                      ],
                    ),
                    const SizedBox(height: 16,),
                    InkWell(
                      onTap: () {},
                      child: const Text('Size guide', style: AppStyle.grayText14,)),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const GoodsCounterWidget(),
                        const SizedBox(width: 36,),
                        Expanded(
                          child: CartButton(
                              title: 'Add to cart',
                              image: shoppingCartImage,
                              color: Colors.black,
                              onTap: () {},
                              style: AppStyle.whiteText16,
                              foregroundColor: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(height: 38,),
                    Text('Description', style: AppStyle.blackText20,),

                  ],
                )
              ),

            ],
          ),
        ),
      ),
    );
  }

  Text _getPriceWidget() {
    return const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '79.95\$',
                                style: AppStyle.strikethroughGrayText16
                              ),
                              TextSpan(
                                text: '  65.00\$',
                                style: AppStyle.redText20
                              ),
                            ]
                          )
                        );
  }
}
