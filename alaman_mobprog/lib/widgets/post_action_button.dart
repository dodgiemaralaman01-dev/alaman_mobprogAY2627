import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class PostActionButton extends StatelessWidget {
  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: FB_DARK_PRIMARY, size: ScreenUtil().setSp(18)),
        label: CustomText(
          text: label,
          fontSize: ScreenUtil().setSp(12),
          color: FB_DARK_PRIMARY,
        ),
      ),
    );
  }
}
