import 'package:chat_ui/widgets/build_message_composer.dart';
import 'package:flutter/material.dart';

import 'package:chat_ui/models/user_model.dart';
import 'package:chat_ui/widgets/chat_mesage.dart';
import 'package:chat_ui/models/message_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.user});
  // if there are group chat or chat room feature in the app the user variable
  // will be replaced with group id or chat room id
  final User user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(widget.user.imageUrl),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(widget.user.name),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  child: ListView.builder(
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    itemCount: chats.length,
                    itemBuilder: (context, index) {
                      final Message message = chats[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return ChatMessage(message: message, isMe: isMe);
                    },
                  ),
                ),
              ),
              const BuildMessageComposer(),
            ],
          ),
        ),
      ),
    );
  }
}



