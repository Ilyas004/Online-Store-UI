import 'package:flutter/material.dart';
import 'package:online_store/ui/shopping_cart/cart_item.dart';
import 'package:online_store/ui/shopping_cart/table_total_price.dart';

class ShoppingCartPage extends StatefulWidget {
  static final _cartItem = [
    CartItem(),
    CartItem(),
    CartItem(),
    CartItem(),
  ];

  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              ListView.builder(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 180),
                cacheExtent: 500,
                itemCount: ShoppingCartPage._cartItem.length,
                itemExtent: 180,
                itemBuilder: (context, index) {
                  return ShoppingCartPage._cartItem[index];
                }),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16, bottom: 26),
                  child: SizedBox(
                    height: 146,
                    child: TableTotalPrice()
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
