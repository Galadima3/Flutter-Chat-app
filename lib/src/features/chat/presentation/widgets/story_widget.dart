import 'package:chat_app/src/features/chat/domain/user.dart';
import 'package:flutter/material.dart';

List storyList = [
  UserModel(
      name: 'Novac',
      imageUrl: 'https://randomuser.me/api/portraits/men/31.jpg',
      isOnline: true,
      hasStory: true),
  UserModel(
      name: 'Derick',
      imageUrl: 'https://randomuser.me/api/portraits/men/81.jpg',
      isOnline: true,
      hasStory: true),
  UserModel(
      name: 'Mevis',
      imageUrl: 'https://randomuser.me/api/portraits/men/31.jpg',
      isOnline: true,
      hasStory: true),
  UserModel(
      name: 'Emannual',
      imageUrl: 'https://randomuser.me/api/portraits/women/49.jpg',
      isOnline: true,
      hasStory: true),
  UserModel(
      name: 'Gracy',
      imageUrl: 'https://randomuser.me/api/portraits/men/35.jpg',
      isOnline: false,
      hasStory: false),
  UserModel(
      name: 'Robert',
      imageUrl: 'https://randomuser.me/api/portraits/men/36.jpg',
      isOnline: false,
      hasStory: true),
];

Widget stories() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 10),
          child: Column(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFe9eaec)),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 33,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 75,
                child: Align(
                    child: Text(
                  'Your Story',
                  overflow: TextOverflow.ellipsis,
                )),
              )
            ],
          ),
        ),
        Row(
            children: List.generate(storyList.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: <Widget>[
                      storyList[index].hasStory
                          ? Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.blueAccent, width: 3)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              storyList[index].imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          : Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          storyList[index].imageUrl),
                                      fit: BoxFit.cover)),
                            ),
                      storyList[index].isOnline
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF66BB6A),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xFFFFFFFF),
                                        width: 3)),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7.5,
                ),
                SizedBox(
                  width: 75,
                  child: Align(
                      child: Text(
                    storyList[index].name,
                    overflow: TextOverflow.ellipsis,
                  )),
                )
              ],
            ),
          );
        }))
      ],
    ),
  );
}
