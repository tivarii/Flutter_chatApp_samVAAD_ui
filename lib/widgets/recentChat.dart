import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class recentChat extends StatelessWidget {
  const recentChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final message chat = chats[index];
            return GestureDetector(
              onTap: () => Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      chatScreen(user: chat.sender),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                    color: chat.unread
                        ? Color.fromARGB(255, 255, 249, 178)
                        : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                            radius: 28.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat.sender.name,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chat.text,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          chat.time,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        chat.unread
                            ? Container(
                                height: 20.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                  color: Theme.of(context).primaryColor,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            : Text(""),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}
