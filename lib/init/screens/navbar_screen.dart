import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/features/history/presentation/screens/history_screens.dart';

import '../../features/auth/presentation/screens/home_screen.dart';
import '../../features/profile/presentation/screens/profile_screens.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ProfileScreen(),
    const LinkHistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppTexts.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: AppTexts.profile,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: AppTexts.history,
            ),
          ],
        ),
      ),
    );
  }
}
