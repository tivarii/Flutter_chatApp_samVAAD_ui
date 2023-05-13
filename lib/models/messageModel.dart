import 'package:flutter/material.dart';

import 'models.dart';

class message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  message(
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  );
}

//data about user we are gonna to use

//current user
final User currentUser = User(0, 'Current User', 'assets/images/greg.jpeg');

//other users
final User greg = User(1, 'Greg', 'assets/images/greg.jpg');
final User james = User(2, 'James', 'assets/images/james.jpg');
final User john = User(3, 'John', 'assets/images/john.jpg');
final User olivia = User(4, 'Olivia', 'assets/images/olivia.jpg');
final User sam = User(5, 'Sam', 'assets/images/sam.jpg');
final User sophia = User(6, 'Sophia', 'assets/images/sophia.jpg');
final User steven = User(7, 'Steven', 'assets/images/steven.jpg');

// FAVORITE CONTACTS
List<User> favorites = [
  sam,
  steven,
  olivia,
  john,
  greg,
  sam,
  steven,
  olivia,
  john,
  greg,
  sam,
  steven,
  olivia,
  john,
  greg,
];

// EXAMPLE CHATS ON HOME SCREEN
List<message> chats = [
  message(
    james,
    '5:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    true,
  ),
  message(
    olivia,
    '4:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    true,
  ),
  message(
    john,
    '3:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
  message(
    sophia,
    '2:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    true,
  ),
  message(
    steven,
    '1:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
  message(
    sam,
    '12:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
  message(
    greg,
    '11:30 AM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<message> messages = [
  message(
    james,
    '5:30 PM',
    'Hey, how\'s it going? What did you do today?',
    true,
    true,
  ),
  message(
    currentUser,
    '4:30 PM',
    'Just walked my doge. She was super duper cute. The best pupper!!',
    false,
    true,
  ),
  message(
    james,
    '3:45 PM',
    'How\'s the doggo?',
    false,
    true,
  ),
  message(
    james,
    '3:15 PM',
    'All the food',
    true,
    true,
  ),
  message(
    currentUser,
    '2:30 PM',
    'Nice! What kind of food did you eat?',
    false,
    true,
  ),
  message(
    james,
    '2:00 PM',
    'I ate so much food today.',
    false,
    true,
  ),
];
