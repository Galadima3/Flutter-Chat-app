import 'package:chat_app/src/features/chat/domain/chat_model.dart';
import 'package:chat_app/src/features/chat/presentation/widgets/chat_tile.dart';

import 'package:flutter/material.dart';

List conversationList = [
  Chat(
      name: 'Novac',
      imageUrl: 'https://randomuser.me/api/portraits/men/31.jpg',
      isOnline: true,
      hasStory: true,
      message: 'Lmao',
      time: '7:39 PM'),
  Chat(
      name: 'Derick',
      imageUrl: 'https://randomuser.me/api/portraits/men/81.jpg',
      isOnline: true,
      hasStory: true,
      message: 'Please submit my manual',
      time: '12:09 AM'),
  Chat(
      name: 'Mevis',
      imageUrl: 'https://randomuser.me/api/portraits/men/31.jpg',
      isOnline: true,
      hasStory: true,
      message: 'Service was awesome!',
      time: '6:12 PM'),
  Chat(
      name: 'Emannual',
      imageUrl: 'https://randomuser.me/api/portraits/women/49.jpg',
      isOnline: true,
      hasStory: true,
      message: 'Thanks for the heads up!!',
      time: '6:12 PM'),
  Chat(
      name: 'Gracy',
      imageUrl: 'https://randomuser.me/api/portraits/women/35.jpg',
      isOnline: false,
      hasStory: false,
      message: 'I miss you',
      time: '1:00 PM'),
  Chat(
      name: 'Robert',
      imageUrl: 'https://randomuser.me/api/portraits/men/36.jpg',
      isOnline: false,
      hasStory: true,
      message: 'Flutter is dope af bro',
      time: '8:34 AM'),
];

Widget conversations(BuildContext context) {
  return Column(
    children: List.generate(conversationList.length, (index) {
      return ChatTile(
        name: conversationList[index].name,
        message: conversationList[index]!.message,
        time: conversationList[index]!.time,
        imageUrl: conversationList[index].imageUrl,
      );
    }),
  );
}
