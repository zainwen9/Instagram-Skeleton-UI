import 'package:flutter/material.dart';
import 'package:instaui/screens/Home.dart';
import 'package:instaui/screens/account.dart';
import 'package:instaui/screens/reels.dart';
import 'package:instaui/screens/search.dart';
import 'package:instaui/screens/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex=0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget> _children=[
    UserHome(),
    Search(),
    reels(),
    shop(),
    account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,),label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,),label: 'search'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,),label: 'reels'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,),label: 'shop'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,),label: 'profile'
          ),
        ],
      ),
    );
  }
}
