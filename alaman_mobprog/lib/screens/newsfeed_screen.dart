import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Dodgie Mar Alaman',
          postContent: 'Kamusta',
          numOfLikes: 100,
          date: 'October 11',
          profileImageAsset: 'assets/images/Dodgie Mar Alaman Profile.jpg',
        ),
        NewsFeedCard(
          userName: 'Mar Alaman',
          postContent: 'Kicking off the holiday season with ICpEP-NCR!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 2',
          profileImageAsset: 'assets/images/Mar Alaman Profile.jpg',
          postImageAsset: 'assets/images/LaMelo Ball Post.png',
        ),
      ],
    );
  }
}
