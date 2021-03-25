import 'package:insta_ui_kit/models/user.dart';

class Chat {
  String message;
  String username;
  String profileImage;
  String timestamp;
  bool isLiked;
  bool isMe;

  Chat({
    this.isLiked,
    this.message,
    this.profileImage,
    this.timestamp,
    this.username,
    this.isMe,
  });
}

List<Chat> chats = [
  Chat(
    isMe: false,
    isLiked: false,
    message: 'Merhaba, bugün ders var mı?',
    profileImage: users[0].profileImage,
    timestamp: '15m',
    username: users[0].username,
  ),
  Chat(
    isMe: true,
    isLiked: false,
    message: 'Evet Kenan hoca yayınlamış bakabilirsin',
    profileImage: users[0].profileImage,
    timestamp: '12m',
    username: users[0].username,
  ),
  Chat(
    isMe: false,
    isLiked: true,
    message: 'Tamam teşekkürler',
    profileImage: users[0].profileImage,
    timestamp: '4m',
    username: users[0].username,
  ),
  Chat(
    isMe: true,
    isLiked: true,
    message: 'Rica ederim',
    profileImage: users[0].profileImage,
    timestamp: '3m',
    username: users[0].username,
  ),
  Chat(
    isMe: false,
    isLiked: false,
    message: 'Görüşmek üzere',
    profileImage: users[0].profileImage,
    timestamp: '1m',
    username: users[0].username,
  ),
];
