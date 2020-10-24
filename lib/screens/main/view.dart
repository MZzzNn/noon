import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:noon/screens/cart/view.dart';
import 'package:noon/screens/categories/view.dart';
import 'package:noon/screens/deals/view.dart';
import 'package:noon/screens/home/view.dart';
import 'package:noon/screens/myAccount/view.dart';

class BottomNavigationBarView extends StatefulWidget {
  @override
  _BottomNavigationBarViewState createState() => _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  int _selectedPageIndex=0;
  List<Widget> _pages = [HomeView(),CategoriesView(),DealsView(),MyAccountView(),CartView()] ;
  void _selectPage (int index)=>setState(() {_selectedPageIndex=index; });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 8,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text(translator.translate('home'))),
            BottomNavigationBarItem(icon: Icon(Icons.category),title: Text(translator.translate('category'))),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer),title: Text(translator.translate('deals'))),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text(translator.translate('my account'))),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text(translator.translate('cart'))),
          ]
      ),
    );
  }
}
