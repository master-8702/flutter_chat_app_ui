import 'package:chat_ui/models/user_model.dart';
import 'dart:core';
import 'package:flutter/material.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      required this.isLiked,
      required this.unread});
}

// sample current user
final User currentUser =
    User(id: 0, name: 'Abebe Kebede', imageUrl: 'assets/images/abebe.jpg');

// other users

final User abe = User(id: 1, name: 'abe', imageUrl: 'assets/images/abe.jpg');
final User kebe = User(id: 2, name: 'kebe', imageUrl: 'assets/images/kebe.jpg');
final User gete = User(id: 3, name: 'gete', imageUrl: 'assets/images/gete.jpg');
final User ali = User(id: 4, name: 'ali', imageUrl: 'assets/images/ali.jpg');
final User chaltu =
    User(id: 5, name: 'chaltu', imageUrl: 'assets/images/chaltu.jpg');
final User shifa =
    User(id: 6, name: 'shifa', imageUrl: 'assets/images/shifa.jpg');
final User birhan =
    User(id: 7, name: 'birhan', imageUrl: 'assets/images/birhan.jpg');
final User mustefa =
    User(id: 8, name: 'mustefa', imageUrl: 'assets/images/mustefa.jpg');
final User biruk =
    User(id: 9, name: 'biruk', imageUrl: 'assets/images/biruk.jpg');
final User muke =
    User(id: 10, name: 'muke', imageUrl: 'assets/images/muke.jpg');

// favorite contacts
List<User> favoriteContacts = [abe, ali, birhan, biruk, muke];

// recent chats on home screen

List<Message> chats = [
  Message(
      sender: mustefa,
      time: '03:34 PM',
      text: 'Thank you very much, i owe you one buddy',
      isLiked: true,
      unread: true),
      Message(
      sender: currentUser,
      time: '04:00 AM',
      text: 'no worries, i will let you know the result after a couple of days',
      isLiked: false,unread: true),
      Message(
      sender: mustefa,
      time: '03:49 AM',
      text: 'Sorry man i have updated the code again, pull the updated code from the master branch again',
      isLiked: false,
      unread: true),
      Message(
      sender: mustefa,
      time: '02:33 AM',
      text: 'Got it.',
      isLiked: false,
      unread: true),
      Message(
      sender: mustefa,
      time: '02:16 AM',
      text: 'check your email, i have sent you the github link',
      isLiked: false,
      unread: true),
      Message(
      sender: mustefa,
      time: '05:00 PM',
      text: 'alright, will send you in the afternoon',
      isLiked: false,
      unread: true),
      Message(
      sender: currentUser,
      time: '04:28 PM',
      text: 'no problem man, send it and i will test it,',
      isLiked: false,
      unread: true),
      Message(
      sender: mustefa,
      time: '04:27 PM',
      text: 'btw, would you mind testing out some code for me?',
      isLiked: false,
      unread: true),
      Message(
      sender: mustefa,
      time: '04:18 PM',
      text: 'work is nice, thanks for asking. ',
      isLiked: true,
      unread: true),
      Message(
      sender: currentUser,
      time: '03:53 PM',
      text: 'am good alhamdulillah, how is work?',
      isLiked: false,
      unread: true),
      Message(
      sender: mustefa,
      time: '08:34 PM',
      text: 'www alhamdulillah, how are you brother? ',
      isLiked: false,
      unread: true),
      Message(
      sender: currentUser,
      time: '08:10 PM',
      text: 'Aww, how are you? ',
      isLiked: false,
      unread: true),
];
