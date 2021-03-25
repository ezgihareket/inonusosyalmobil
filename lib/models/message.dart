import 'package:insta_ui_kit/models/user.dart';

class Message {
  String username;
  String lastMessage;
  String timestamp;
  String profileImage;
  bool isRead;
  bool isOnline;

  Message({
    this.isRead,
    this.lastMessage,
    this.profileImage,
    this.timestamp,
    this.username,
    this.isOnline,
  });
}

List<Message> messages = [
  Message(
    isRead: true,
    lastMessage: 'Sınav tarihleri açıklanmış',
    profileImage: users[2].profileImage,
    timestamp: '15m',
    username: users[2].username,
    isOnline: true,
  ),
  Message(
    isRead: false,
    lastMessage: 'Mat2 soruları elinde var mı?',
    profileImage: users[4].profileImage,
    timestamp: '45m',
    username: users[4].username,
    isOnline: false,
  ),
  Message(
    isRead: true,
    lastMessage: 'Ders notlarını atabilri misin',
    profileImage: users[3].profileImage,
    timestamp: '1d',
    username: users[3].username,
    isOnline: false,
  ),
  Message(
    isRead: true,
    lastMessage: 'Bitirme Projesinde ne yaptın?',
    profileImage: users[2].profileImage,
    timestamp: '15m',
    username: users[2].username,
    isOnline: true,
  ),
  Message(
    isRead: false,
    lastMessage: 'iyi günler',
    profileImage: users[4].profileImage,
    timestamp: '45m',
    username: users[4].username,
    isOnline: false,
  ),
  Message(
    isRead: true,
    lastMessage: 'Ders yarın',
    profileImage: users[3].profileImage,
    timestamp: '1d',
    username: users[3].username,
    isOnline: false,
  ),
];

