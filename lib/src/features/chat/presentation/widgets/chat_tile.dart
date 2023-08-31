import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 22,
        ),
        title: Text(
          name,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: TextStyle(
                  fontSize: 14, color: const Color(0xFF000000).withOpacity(0.7)),
            ),
            Text(
              time,
              style: TextStyle(
                  fontSize: 14, color: const Color(0xFF000000).withOpacity(0.7)),
            ),
          ],
        ),
        
      ),
    );
  }
}
