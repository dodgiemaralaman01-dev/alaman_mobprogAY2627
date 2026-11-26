import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class Notification extends StatelessWidget {
  final String name;
  final String post;
  final String description;
  final String? profileImageAsset;

  const Notification({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.profileImageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: ScreenUtil().setWidth(22),
            backgroundColor: FB_PLACEHOLDER,
            backgroundImage: profileImageAsset == null
                ? null
                : AssetImage(profileImageAsset!),
            child: profileImageAsset == null
                ? Icon(
                    Icons.person,
                    size: ScreenUtil().setSp(30),
                    color: FB_PRIMARY,
                  )
                : null,
          ),

          SizedBox(width: ScreenUtil().setWidth(12)),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(13),
                    fontWeight: FontWeight.bold,
                    color: FB_DARK_PRIMARY,
                  ),
                ),

                Text(
                  'Posted: $post',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(11),
                    color: FB_DARK_PRIMARY,
                  ),
                ),

                Text(
                  description,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(11),
                    fontStyle: FontStyle.italic,
                    color: FB_MUTED,
                  ),
                ),
              ],
            ),
          ),

          Icon(Icons.more_horiz, size: ScreenUtil().setSp(20)),
        ],
      ),
    );
  }
}
