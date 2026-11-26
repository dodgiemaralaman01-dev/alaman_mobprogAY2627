import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  static const _posts = <_NewsFeedPost>[
    _NewsFeedPost(
      userName: 'Dodgie Mar Alaman',
      postContent: 'Kamusta',
      numOfLikes: 100,
      date: 'October 11',
      hasImage: false,
      profileImageAsset: 'assets/images/Dodgie Mar Alaman Profile.jpg',
    ),
    _NewsFeedPost(
      userName: 'Mar Alaman',
      postContent: 'When I step on the court, I become LaMelo Ball.',
      numOfLikes: 200,
      date: 'December 2',
      hasImage: true,
      profileImageAsset: 'assets/images/Mar Alaman Profile.jpg',
      postImageAsset: 'assets/images/LaMelo Ball Post.png',
    ),
    _NewsFeedPost(
      userName: 'Monkey D. Luffy',
      postContent:
          'A new island means a new adventure. The crew is together, and I am ready to see what lies ahead.',
      numOfLikes: 1000,
      date: 'November 24',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Monkey_D_Luffy.jpg',
      postImageAsset: 'assets/images/Post_Monkey_D_Luffy.jpg',
    ),
    _NewsFeedPost(
      userName: 'Roronoa Zoro',
      postContent:
          'Training never stops. Every challenge brings me closer to becoming the world\'s greatest swordsman.',
      numOfLikes: 942,
      date: 'November 23',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Roronoa_Zoro.jpg',
      postImageAsset: 'assets/images/Post_Roronoa_Zoro.jpg',
    ),
    _NewsFeedPost(
      userName: 'Vinsmoke Sanji',
      postContent:
          'The best way to bring the crew together is around a table full of good food.',
      numOfLikes: 885,
      date: 'November 22',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Vinsmoke_Sanji.jpg',
      postImageAsset: 'assets/images/Post_Vinsmoke_Sanji.jpg',
    ),
    _NewsFeedPost(
      userName: 'Tony Tony Chopper',
      postContent:
          'I will keep learning so I can help anyone who needs a doctor.',
      numOfLikes: 721,
      date: 'November 21',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Tony_Tony_Chopper.jpg',
      postImageAsset: 'assets/images/Post_Tony_Tony_Chopper.jpg',
    ),
    _NewsFeedPost(
      userName: 'Nico Robin',
      postContent:
          'A small clue from the past can open the door to a much larger history.',
      numOfLikes: 860,
      date: 'November 20',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Nico_Robin.jpg',
      postImageAsset: 'assets/images/Post_Nico_Robin.jpg',
    ),
    _NewsFeedPost(
      userName: 'Portgas D. Ace',
      postContent:
          'I am grateful for the people who made me feel that I belong.',
      numOfLikes: 804,
      date: 'November 19',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Portgas_D_Ace.jpg',
      postImageAsset: 'assets/images/Post_Portgas_D_Ace.jpg',
    ),
    _NewsFeedPost(
      userName: 'Trafalgar D. Water Law',
      postContent:
          'A good plan depends on patience, careful observation, and knowing when to act.',
      numOfLikes: 778,
      date: 'November 18',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Trafalgar_D_Water_Law.jpg',
      postImageAsset: 'assets/images/Post_Trafalgar_D_Water_Law.jpg',
    ),
    _NewsFeedPost(
      userName: 'Edward Newgate',
      postContent:
          'The strongest bond is one that gives every member of the family a place to belong.',
      numOfLikes: 990,
      date: 'November 17',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Edward_Newgate.jpg',
      postImageAsset: 'assets/images/Post_Edward_Newgate.jpg',
    ),
    _NewsFeedPost(
      userName: 'Charlotte Linlin',
      postContent:
          'A grand celebration calls for a table filled with delicious semlas.',
      numOfLikes: 815,
      date: 'November 16',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Charlotte_Linlin.jpg',
      postImageAsset: 'assets/images/Post_Charlotte_Linlin.jpg',
    ),
    _NewsFeedPost(
      userName: 'Gol D. Roger',
      postContent:
          'There is always another horizon for a curious soul to explore.',
      numOfLikes: 1200,
      date: 'November 15',
      hasImage: true,
      profileImageAsset: 'assets/images/Profile_Gol_D_Roger.jpg',
      postImageAsset: 'assets/images/Post_Gol_D_Roger.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsFeedCard(
          userName: post.userName,
          postContent: post.postContent,
          numOfLikes: post.numOfLikes,
          date: post.date,
          hasImage: post.hasImage,
          profileImageAsset: post.profileImageAsset,
          postImageAsset: post.postImageAsset,
        );
      },
    );
  }
}

class _NewsFeedPost {
  const _NewsFeedPost({
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    required this.hasImage,
    this.profileImageAsset,
    this.postImageAsset,
  });

  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;
  final String? profileImageAsset;
  final String? postImageAsset;
}
