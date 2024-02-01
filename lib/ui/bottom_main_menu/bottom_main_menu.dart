import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/ui/catalog/catalog_list_page.dart';
import 'package:online_store/ui/favorite/favorite_page.dart';
import 'package:online_store/ui/main/main_page.dart';
import 'package:online_store/ui/profile/main/profile_page.dart';
import 'package:online_store/ui/shopping_cart/shopping_cart_page.dart';

class BottomMainMenu extends StatefulWidget {
  const BottomMainMenu({super.key});

  @override
  State<BottomMainMenu> createState() => _BottomMainMenuState();
}

class _BottomMainMenuState extends State<BottomMainMenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Image(image: homeImage,),
              label: '',
              activeIcon: Image(image: homeImage, color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Image(image: catalogImage,),
            label: '',
            activeIcon: Image(image: catalogImage, color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Image(image: shoppingCartImage,),
            label: '',
            activeIcon: Image(image: shoppingCartImage, color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Image(image: heartImage,),
            label: '',
            activeIcon: Image(image: heartImage, color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Image(image: profileImage,),
            label: '',
            activeIcon: Image(image: profileImage, color: Colors.black,),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return const MainPage();
      case 1:
        return const CatalogListPage();
      case 2:
        return const ShoppingCartPage();
      case 3:
        return const FavoritePage();
      case 4:
        return const ProfilePage();
      default:
        return Container();
    }
  }
}
