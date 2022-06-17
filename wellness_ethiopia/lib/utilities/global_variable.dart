import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wellness_ethiopia/screens/add_post_screen.dart';
import 'package:wellness_ethiopia/screens/feed_screen.dart';
import 'package:wellness_ethiopia/screens/profile_screen.dart';
import 'package:wellness_ethiopia/screens/search_screen.dart';

const webScreenSize = 900;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
 // const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
