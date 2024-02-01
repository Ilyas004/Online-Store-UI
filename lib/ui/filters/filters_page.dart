import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/ui/filters/custom_switch.dart';
import 'package:online_store/ui/filters/price_setter.dart';
import 'package:online_store/ui/general_widgets/custom_button.dart';
import 'package:online_store/ui/general_widgets/filter_button.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Filters', style: AppStyle.blackText18,),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16,),
                const Text('Price', style: AppStyle.blackText20,),
                const SizedBox(height: 18,),
                const Row(
                  children: [
                    Expanded(child: PriceSetter(prefixString: 'from')),
                    SizedBox(width: 22,),
                    Expanded(child: PriceSetter(prefixString: 'by'))
                  ],
                ),
                const SizedBox(height: 50,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Items on Sale', style: AppStyle.blackText20,),
                    CustomSwitch()
                  ],
                ),
                const SizedBox(height: 33,),
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
                const SizedBox(height: 33,),
                const Text('Season', style: AppStyle.blackText20,),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilterButton(onTap: () {}, text: 'Summer'),
                    FilterButton(onTap: () {}, text: 'Autumn'),
                    FilterButton(onTap: () {}, text: 'Winter'),
                    FilterButton(onTap: () {}, text: 'Spring'),
                  ],
                ),
                const Spacer(flex: 1,),
                CustomButton(
                    title: 'Show 248 items',
                    onTap: () {},
                    image: null,
                    backgroundColor: Colors.black,
                    textColor: Colors.white),
                const SizedBox(height: 50,)
              ],
            ),
          )
      ),
    );
  }
}
