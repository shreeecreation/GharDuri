import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Draft/draft_screen.dart';
import 'package:ghardhuri/src/app/screens/Questions/questions.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({super.key});

  @override
  State<HomeNavigator> createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    const Questions(),
    const DraftScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      return;
    }
    setState(() {
      if (index == 2) {
        _selectedIndex = _selectedIndex;
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF828282),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.notifications, size: 28), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home_filled, size: 28), label: ""),
          ],
          currentIndex: _selectedIndex,
          unselectedLabelStyle: const TextStyle(fontSize: 0.5),
          selectedLabelStyle: const TextStyle(fontSize: 0.5),
          selectedItemColor: AppColors.primary,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
