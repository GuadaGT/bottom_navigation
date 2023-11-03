import 'package:bottom_navigation/pages/home_page.dart';
import 'package:bottom_navigation/pages/user_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPage = 0;
  //List _pages = [HomPage(),UserPage()];

  List<Widget> _pages = <Widget>[HomPage(),UserPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: _pages[_selectedPage],
      body: IndexedStack(
        index: _selectedPage,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (index) => setState(() {
          _selectedPage = index;
        }),
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User')
        ],
      ),
    );
  }
}