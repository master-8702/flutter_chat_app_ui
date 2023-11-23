import 'package:flutter/material.dart';

import 'package:chat_ui/models/message_model.dart';

class ChatMessage extends StatefulWidget {
  final Message message;
  final bool isMe;
  const ChatMessage({super.key, required this.message, required this.isMe});

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // outside the border
          margin: widget.isMe
              ? const EdgeInsets.only(left: 80, top: 8, bottom: 8)
              : const EdgeInsets.only(top: 8, bottom: 8),
          // inside the border
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: widget.isMe
              ? const BoxDecoration(
                  color: Color.fromARGB(255, 247, 242, 247),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                )
              : const BoxDecoration(
                  color: Color.fromARGB(255, 226, 207, 226),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      widget.message.text,
                      style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,ss
                children: [
                  Text(widget.message.time,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                      )),
                ],
              )
            ],
          ),
        ),
        if (!widget.isMe)
          IconButton(
              onPressed: () {},
              icon: Icon(
                widget.message.isLiked ? Icons.favorite : Icons.favorite_border,
                color: widget.message.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.blueGrey,
                size: 30,
              ))
      ],
    );
  }
}
