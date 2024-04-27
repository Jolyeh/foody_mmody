import 'package:flutter/material.dart';
import 'home_page.dart';
import 'favorite_page.dart';
import 'cart_page.dart';
import 'profil_page.dart';
import '../theme/colors.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {

  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(),
        FavoritePage(),
        CartPage(),
        ProfilPage()
      ][_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  _currentIndex,
        onTap: (index) => setCurrentIndex(index),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: couleur,
        unselectedItemColor: Colors.black,
        backgroundColor: couleur,
        elevation: 50,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profil",
          ),
        ],
      )
    );
  }
}
