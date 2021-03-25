import 'package:insta_ui_kit/models/user.dart';

class TextPost {
  String username;
  String profileImage;
  DateTime timestamp;
  String likes;
  String comments;
  String text;
  String location;
  List<Comment> comment;

  TextPost({
    this.comments,
    this.text,
    this.likes,
    this.profileImage,
    this.timestamp,
    this.username,
    this.location,
    this.comment,
  });


}

class Comment {
  String profileImage;
  String comment;
  String timestamp;
  String username;

  Comment({
    this.comment,
    this.profileImage,
    this.timestamp,
    this.username,
  });
}

List<TextPost> textposts = [
  TextPost(
    comments: '1',
    text:
    'İşleyen Demir Paslanmaz',

    likes: '67',
    profileImage: users[4].profileImage,
    timestamp: DateTime(2020, 10, 10, 15, 30),
    username: users[4].username,
    location: 'Malatya',
    comment: [

      Comment(
        comment: 'Haklısınız Hocam',
        profileImage: users[2].profileImage,
        timestamp: '2d',
        username: users[2].username,
      ),

    ],
  ),
  TextPost(
    comments: '1',
    text:
    'Algoritma Grubu Açıldı Katılabilirsiniz',
    likes: '54',
    profileImage: users[2].profileImage,
    timestamp: DateTime(2020, 10, 10, 15, 30),
    username: users[2].username,
    location: 'Malatya',
    comment: [
      Comment(
        comment: 'Teşekkürler',
        profileImage: users[1].profileImage,
        timestamp: '15min',
        username: users[1].username,
      ),

    ],
  ),


];
