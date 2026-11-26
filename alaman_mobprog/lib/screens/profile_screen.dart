import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: ScreenUtil().setWidth(56),
            backgroundImage: const AssetImage(
              'assets/images/Dodgie Mar Alaman Profile.jpg',
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(16)),
          Text(
            'Dodgie Mar Alaman',
            style: TextStyle(
              fontSize: ScreenUtil().setSp(20),
              fontWeight: FontWeight.bold,
              color: FB_DARK_PRIMARY,
            ),
          ),
        ],
      ),
    );
  }
}
