import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_list_items.dart';

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(chatListItems[i].userName),
            subtitle: Text(chatListItems[i].date),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatListItems[i].imageUrl),
            ),
            trailing: Icon(
              i % 3 == 1 ? Icons.videocam : Icons.call,
              color: Color(0xFF075E54),
            ),
          );
        },
        separatorBuilder: (context, i) {
          return Divider();
        },
        itemCount: chatListItems.length);
  }
}
