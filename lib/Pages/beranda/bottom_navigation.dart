import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/Pages/beranda/home_page.dart';
import 'package:dongengku/Pages/beranda/search_story.dart';
import 'package:dongengku/Pages/beranda/search_dubber.dart';
import 'package:dongengku/Pages/profil/profile_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      if(index == 3){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      }
      else {_selectedIndex = index;}
    });
  }

  static List<Widget> _bottomNavView = [
    HomePage(),
    SearchStory(),
    SearchDubber(),
  ];

  @override
  Widget build(BuildContext context) {
    // ),
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.all(0.0),
          child: _bottomNavView.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: _navBarList.map((e) => BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(e.icon)),
          activeIcon: ImageIcon(AssetImage(e.activeIcon), color: Color(0xff50c9c0),),
          title: Text(
              e.title,
              style: TextStyle(
                  color: _selectedIndex == e.index? Color(0xff50c9c0) : Color(0xff515151)
              ),
          ),
        )).toList(),
      ),
    );
  }
}

class NavBarItem{
  final String icon;
  final String activeIcon;
  final String title;
  final int index;

  NavBarItem({this.icon, this.activeIcon, this.title, this.index});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon : "assets/icons/icon_home.png",
    activeIcon: "assets/icons/icon_home_active.png",
    title: "Beranda",
    index: 0,
  ),
  NavBarItem(
      icon : "assets/icons/icon_storybook.png",
      activeIcon: "assets/icons/icon_storybook_active.png",
      title: "Dongeng",
      index: 1,
  ),
  NavBarItem(
      icon : "assets/icons/icon_microphone.png",
      activeIcon: "assets/icons/icon_microphone_active.png",
      title: "Dubber",
      index: 2,
  ),
  NavBarItem(
      icon : "assets/icons/icon_user.png",
      activeIcon: "assets/icons/icon_user.png",
      title: "Profil",
      index: 3,
  )
];
