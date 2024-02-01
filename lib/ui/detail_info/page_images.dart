import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';

class PageImages extends StatefulWidget {
  const PageImages({super.key});


  static final List<AssetImage> images = [
    testLedyImage,
    testLedyImage,
    testLedyImage,
    testLedyImage,
  ];

  @override
  State<PageImages> createState() => _PageImagesState();
}

class _PageImagesState extends State<PageImages> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 423,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            controller: PageController(viewportFraction: 1),
            itemCount: PageImages.images.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: PageImages.images[index],
                    fit: BoxFit.cover
                  )
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(PageImages.images.length, (index) => Indicator(
                            isActive: _selectedIndex == index ? true : false)
                  )
                ],
              ),
            ),
          ),
          IconButton(
            splashRadius: 20,
            onPressed: () { _onPopNavigate(context); },
            icon: Icon(Icons.arrow_back_outlined)
          ),
        ],
      ),
    );
  }

  void _onPopNavigate(BuildContext context) {
    Navigator.of(context).pop();
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: isActive ? 28 : 8 ,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.grey,
          borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}
