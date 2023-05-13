import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/models.dart';

class chatScreen extends StatefulWidget {
  final User user;

  const chatScreen({super.key, required this.user});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  _buildMsg(message msg, bool isMe) {
    return Container(
        decoration: BoxDecoration(
            color: isMe ? Colors.white30 : Color.fromARGB(255, 153, 218, 238),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        margin: isMe
            ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
            : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              msg.time,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(msg.text),
          ],
        ));
  }

  _buildMsgComposer() {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
              child: TextField(
            onChanged: (value) => {},
            decoration: InputDecoration(hintText: "Send a message..."),
          )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 30.0,
              )),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.all(8.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext, int index) {
                        final message msg = messages[index];
                        final bool isMe = msg.sender.id == currentUser.id;
                        return Container(
                          child: _buildMsg(msg, isMe),
                        );
                      }),
                ),
              ),
            ),
            _buildMsgComposer(),
          ],
        ),
      ),
    );
  }
}
