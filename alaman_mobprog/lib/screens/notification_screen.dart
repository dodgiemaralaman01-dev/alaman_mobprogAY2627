import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  static const _notifications = <Map<String, String>>[
    {
      'name': 'Dodgie Mar Alaman',
      'post': 'Campus Life',
      'description': 'Liked your post.',
    },
    {
      'name': 'Mar Alaman',
      'post': 'Holiday at ICpEP-NCR',
      'description': 'Commented on your photo.',
    },
    {
      'name': 'Monkey D. Luffy',
      'post': 'A New Island',
      'description': 'Shared your post.',
    },
    {
      'name': 'Roronoa Zoro',
      'post': 'Training Day',
      'description': 'Started following you.',
    },
    {
      'name': 'Vinsmoke Sanji',
      'post': 'Dinner for the Crew',
      'description': 'Liked your photo.',
    },
    {
      'name': 'Tony Tony Chopper',
      'post': 'A Doctor\'s Promise',
      'description': 'Mentioned you in a comment.',
    },
    {
      'name': 'Nico Robin',
      'post': 'A Page from History',
      'description': 'Invited you to an event.',
    },
    {
      'name': 'Portgas D. Ace',
      'post': 'A Day with the Crew',
      'description': 'Reacted with a heart.',
    },
    {
      'name': 'Trafalgar D. Water Law',
      'post': 'The Operation',
      'description': 'Replied to your comment.',
    },
    {
      'name': 'Edward Newgate',
      'post': 'Family at Sea',
      'description': 'Liked 3 of your posts.',
    },
    {
      'name': 'Charlotte Linlin',
      'post': 'The Grand Banquet',
      'description': 'Shared your post.',
    },
    {
      'name': 'Gol D. Roger',
      'post': 'The Next Great Voyage',
      'description': 'Commented: What an adventure!',
    },
    {
      'name': 'Donquixote Doflamingo',
      'post': 'A Game of Power',
      'description': 'Invited you to join a group.',
    },
    {
      'name': 'Dracule Mihawk',
      'post': 'The Quiet Duel',
      'description': 'Reacted to your update.',
    },
    {
      'name': 'Boa Hancock',
      'post': 'A Day in Amazon Lily',
      'description': 'Mentioned you in a post.',
    },
    {
      'name': 'Eustass Kid',
      'post': 'Building a New Machine',
      'description': 'Liked your design.',
    },
    {
      'name': 'Marshall D. Teach',
      'post': 'A Risky New Plan',
      'description': 'Shared your article.',
    },
    {
      'name': 'Nefertari Vivi',
      'post': 'A Message from Alabasta',
      'description': 'Sent you a friend request.',
    },
    {
      'name': 'Kouzuki Oden',
      'post': 'A Journey Beyond Wano',
      'description': 'Commented on your project.',
    },
    {
      'name': 'Silvers Rayleigh',
      'post': 'Stories from the Old Days',
      'description': 'Tagged you in a photo.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _notifications.length,
      separatorBuilder: (_, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final notification = _notifications[index];
        final name = notification['name']!;
        return notif.Notification(
          name: name,
          post: notification['post']!,
          description: notification['description']!,
          profileImageAsset: _profileImageAsset(name),
        );
      },
    );
  }

  String? _profileImageAsset(String name) {
    if (name == 'Dodgie Mar Alaman') {
      return 'assets/images/Dodgie Mar Alaman Profile.jpg';
    }
    if (name == 'Mar Alaman') {
      return 'assets/images/Mar Alaman Profile.jpg';
    }
    final slug = name
        .replaceAllMapped(RegExp(r'[^A-Za-z0-9]+'), (match) => '_')
        .replaceAll(RegExp(r'^_|_$'), '');
    return 'assets/images/Profile_$slug.jpg';
  }
}
