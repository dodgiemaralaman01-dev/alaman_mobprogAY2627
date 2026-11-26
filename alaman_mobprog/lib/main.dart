import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:alaman_mobprog/constants.dart';
import 'package:alaman_mobprog/screens/home_screen.dart';
import 'package:alaman_mobprog/screens/newsfeed_screen.dart';

void main() => runApp(const AlamanFacebook());

class AlamanFacebook extends StatelessWidget {
  const AlamanFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Den Den Mushi Book',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: FB_PRIMARY,
              primary: FB_PRIMARY,
              secondary: FB_SECONDARY,
              surface: FB_SURFACE,
            ),
            scaffoldBackgroundColor: FB_TEXT_COLOR_WHITE,
            dividerColor: FB_LIGHT_PRIMARY,
          ),
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => const NewsFeedScreen(),
            '/home': (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}
