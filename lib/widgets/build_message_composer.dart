import 'package:flutter/material.dart';

class BuildMessageComposer extends StatefulWidget {
  const BuildMessageComposer({super.key});

  @override
  State<BuildMessageComposer> createState() => _BuildMessageComposerState();
}

class _BuildMessageComposerState extends State<BuildMessageComposer> {
  bool isTyping = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 247, 242, 247),
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.emoji_emotions,
                color: Theme.of(context).primaryColor,
              )),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: Colors.blueGrey)),
              onChanged: (value) {
                if (value.isEmpty) {
                  setState(() {
                    isTyping = false;
                  });
                } else {
                  setState(() {
                    isTyping = true;
                  });
                }
              },
            ),
          ),
          isTyping
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  color: Theme.of(context).primaryColor,
                )
              : Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.attach_file),
                      color: Theme.of(context).primaryColor,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.mic),
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
