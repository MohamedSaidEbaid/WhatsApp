import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_message.dart';

class ChatScreen extends StatelessWidget {
  final String personName;
  ChatScreen({this.personName});
  final List<ChatMessage> chatMessages = [
    ChatMessage(messageText: 'How are you', isMyMessage: true, date: '7 April'),
    ChatMessage(messageText: 'How are you', isMyMessage: true, date: '7 April'),
    ChatMessage(
        messageText: 'How are you', isMyMessage: false, date: '7 April'),
    ChatMessage(messageText: 'How are you', isMyMessage: true, date: '7 April'),
    ChatMessage(
        messageText: 'How are you', isMyMessage: false, date: '7 April'),
    ChatMessage(
        messageText: 'How are you', isMyMessage: false, date: '7 April'),
  ];
  Widget bottomBar() {
    return Container();
  }

  Widget listViewBuilder() {
    return ListView.builder(
      itemBuilder: (context, i) {
        return Column(
          children: <Widget>[
            Align(
              alignment: chatMessages[i].isMyMessage
                  ? Alignment.topRight
                  : Alignment.topLeft,
              child: Container(
                child: Text(
                  chatMessages[i].messageText,
                  style: TextStyle(fontSize: 18.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xFFDCF8C6),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Color(0x22000000),
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      itemCount: chatMessages.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
        title: Text(personName),
        backgroundColor: Color(0xFF075E54),
        actions: <Widget>[Icon(Icons.call), Icon(Icons.more_vert)],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: listViewBuilder(),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            margin: EdgeInsets.only(left: 10.0, right: 75.0, bottom: 20.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.sentiment_satisfied),
                  onPressed: () {},
                ),
                Flexible(
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Enter your Message'),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.attachment),
                ),
                IconButton(
                  icon: Icon(Icons.camera_alt),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF075E54),
        child: Icon(Icons.mic),
        onPressed: () {},
      ),
    );
  }
}
