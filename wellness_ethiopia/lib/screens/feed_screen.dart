import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wellness_ethiopia/screens/chat_page.dart';
import 'package:wellness_ethiopia/utilities/colors.dart';
import 'package:wellness_ethiopia/utilities/global_variable.dart';
import 'package:wellness_ethiopia/widgets/post_card.dart';

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatPage()));
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
    );
  }

  // Widget Contain() {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       height: 300,
  //       color: Color.fromARGB(66, 235, 232, 232),
  //       child: Row(
  //         // ignore: prefer_const_literals_to_create_immutables
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.fromLTRB(15, 0, 50, 180),
  //             child: CircleAvatar(
  //               radius: 40,
  //               backgroundImage: AssetImage('images/profile.png'),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
