import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/size_list/size_list_item.dart';

class SizeListPage extends StatefulWidget {
  const SizeListPage({super.key});

  @override
  State<SizeListPage> createState() => _SizeListPageState();
}

class _SizeListPageState extends State<SizeListPage> {
  final List<String> _sizeData = [
    '2XL', '2XS', '3XL', '3XL/4XL', '4XL', '5XL', 'XS', 'XS/S',
    'S', 'M', 'L', 'XL', 'XL/2XL'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Size', style: AppStyle.blackText18,),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return SizeListItem(title: _sizeData[index]);
        },
        separatorBuilder: (context, index) {
          return const Divider(color: grayColor);
        },
        itemCount: _sizeData.length,
      ),
    );
  }
}
