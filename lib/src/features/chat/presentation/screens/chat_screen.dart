import 'package:chat_app/src/features/auth/data/auth_repository.dart';
import 'package:chat_app/src/features/chat/domain/user.dart';
import 'package:chat_app/src/features/chat/presentation/widgets/conversation_widget.dart';
import 'package:chat_app/src/features/chat/presentation/widgets/story_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final User user;
  const ChatScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
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
                   Text(
                    user.uid,
                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      AuthRepository()
                          .signOut()
                          .then((value) => Navigator.of(context).pop());
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            stories(),
            conversations(context)
          ],
        ),
      )),
    );
  }
}
