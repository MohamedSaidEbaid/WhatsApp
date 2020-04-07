import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_list_items.dart';
import 'package:whatsapp/screens/chat_screen.dart';

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatListItems.length,
      separatorBuilder: (ctx, i) {
        return Divider();
      },
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(chatListItems[i].userName),
          subtitle: Text(chatListItems[i].lastMessage),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(chatListItems[i].imageUrl),
          ),
          trailing: Text(chatListItems[i].date),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ChatScreen(personName: chatListItems[i].userName),
              ),
            );
          },
        );
      },
    );
  }
}
