import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import 'package:chat_ui/models/user_model.dart';
import 'package:chat_ui/models/message_model.dart';

class FavoriteContact extends StatelessWidget {
  const FavoriteContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Favorite Contacts',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz),
                      iconSize: 30,
                      color: Colors.blueGrey,
                    )
                  ]),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10),
                itemCount: favoriteContacts.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ChatScreen(user: favoriteContacts[index])));
                      },
                      child: Favorite(user: favoriteContacts[index]));
                },
              ),
            )
          ],
        ));
  }
}

class Favorite extends StatelessWidget {
  final User user;
  const Favorite({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(user.imageUrl),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          user.name,
          style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}
