import 'package:chat_app/src/features/chat/presentation/widgets/chat_tile.dart';
import 'package:chat_app/src/features/chat/presentation/widgets/conversation_widget.dart';
import 'package:chat_app/src/features/chat/presentation/widgets/story_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.randomuser.me/api/portraits/men/11.jpg"),
                          fit: BoxFit.cover)),
                ),
                const Text(
                  "Chats",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
               const Icon(Icons.edit)
              ],
              ),
              stories(),
             
              conversations(context)

            ],
          ),
        )
      ),
    );
  }
}