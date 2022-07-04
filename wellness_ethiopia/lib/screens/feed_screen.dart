// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wellness_ethiopia/screens/add_post_screen.dart';
import 'package:wellness_ethiopia/screens/chat_page.dart';
import 'package:wellness_ethiopia/utilities/colors.dart';
import 'package:wellness_ethiopia/utilities/global_variable.dart';
import 'package:wellness_ethiopia/widgets/post_card.dart';

import 'chat_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          width > webScreenSize ? webBackgroundColor : mobileBackgroundColor,
      appBar: width > webScreenSize
          ? null
          : AppBar(
              backgroundColor: mobileBackgroundColor,
              automaticallyImplyLeading: false,
              centerTitle: false,
              title: const Text(
                'Wellness Ethiopia',
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.messenger_outline,
                    color: primaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                ),
              ],
            ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('posts').snapshots(),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            // TODO uncomment later
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width > webScreenSize ? width * 0.3 : 0,
                  vertical: width > webScreenSize ? 15 : 0,
                ),
                child: PostCard(
                  snap: snapshot.data!.docs[index].data(),
                ),
              ),
            );
            // return ListView(
            //   children: [
            //     //appBar(),
            //     // ignore: deprecated_member_use

            //     SizedBox(
            //       height: 0,
            //     ),
            //     Contain(),
            //     Contain(),
            //     Contain(),

            //     Contain(),
            //   ],
            // );
          }),
      // ignore: prefer_const_constructors
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: Align(
          alignment: Alignment(1, -1),
          child: FloatingActionButton(
            backgroundColor: primaryColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddPostScreen()));
            },

            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(50),
            // ),

            child: const Icon(
              Icons.add,
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
