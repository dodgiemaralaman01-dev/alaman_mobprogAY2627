import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../screens/newsfeed_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/profile_screen.dart';
import '../widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final isNewsFeedSelected = _selectedIndex == 0;
    final title = switch (_selectedIndex) {
      0 => 'Den Den Mushi Book',
      1 => 'Notifications',
      _ => 'Profile',
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: FB_TEXT_COLOR_WHITE,
        shadowColor: FB_LIGHT_PRIMARY,
        elevation: 2,
        title: CustomText(
          text: title,
          fontSize: ScreenUtil().setSp(25),
          color: isNewsFeedSelected ? FB_PRIMARY : FB_DARK_PRIMARY,
          fontFamily: isNewsFeedSelected ? 'Klavika' : 'Frutiger',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsFeedScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //selected item
        showUnselectedLabels: false, //unselected item
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: FB_SECONDARY,
        unselectedItemColor: FB_MUTED,
        currentIndex: _selectedIndex,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
