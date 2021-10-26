import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:secondapp/categories_screen.dart';
import 'package:secondapp/favourite_screen.dart';
import 'package:secondapp/main_drawer.dart';
import 'package:secondapp/models/device.dart';

class TabScreen extends StatefulWidget {
  final List<Device> favouriteDevice;

  TabScreen(this.favouriteDevice);
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': CategoriesScreen(), 'title': 'ElectroVice'},
      {'page': FavouriteScreen(widget.favouriteDevice), 'title': 'Favourite'}
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          _pages[_selectedPageIndex]['title'] as String,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 30,
            color: Color(0xFF545D68),
          ),
        ),
        backgroundColor: Color(
          0xFFFCFAF8,
        ),
        elevation: 5.0,
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        backgroundColor: Color(
          0xFFFCFAF8,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favourite'),
          ),
        ],
      ),
    );
  }
}
