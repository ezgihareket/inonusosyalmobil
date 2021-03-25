import 'package:insta_ui_kit/models/post.dart';
import 'package:insta_ui_kit/models/user.dart';

class Activity {
  String username;
  String profileImage;
  String title;
  String subtitle;
  String timestamp;
  String type;
  String image;

  Activity({
    this.profileImage,
    this.subtitle,
    this.timestamp,
    this.title,
    this.type,
    this.username,
    this.image,
  });
}

List<Activity> activities = [
  Activity(
    profileImage: users[1].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '1m',
    title: '',
    type: 'FOLLOWER',
    username: users[1].username,
    image: '',
  ),
  Activity(
    profileImage: users[2].profileImage,
    subtitle:
        'yorum: \"Bu not çok işime yaradı teşekkürler.\"',
    timestamp: '15m',
    title: '',
    type: 'POST',
    username: users[2].username,
    image: posts[2].image,
  ),

  Activity(
    profileImage: users[3].profileImage,
    subtitle: 'Gönderini Beğendi',
    timestamp: '4d',
    title: '',
    type: 'POST',
    username: users[3].username,
    image: posts[2].image,
  ),
  Activity(
    profileImage: users[2].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '4d',
    title: '',
    type: 'FOLLOWER',
    username: users[2].username,
    image: '',
  ),

  Activity(
    profileImage: users[1].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '1m',
    title: '',
    type: 'FOLLOWER',
    username: users[1].username,
    image: '',
  ),
  Activity(
    profileImage: users[2].profileImage,
    subtitle:
    'yorum: \"Bu not çok işime yaradı teşekkürler.\"',
    timestamp: '15m',
    title: '',
    type: 'POST',
    username: users[2].username,
    image: posts[2].image,
  ),

  Activity(
    profileImage: users[3].profileImage,
    subtitle: 'Gönderini Beğendi',
    timestamp: '4d',
    title: '',
    type: 'POST',
    username: users[3].username,
    image: posts[2].image,
  ),
  Activity(
    profileImage: users[2].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '4d',
    title: '',
    type: 'FOLLOWER',
    username: users[2].username,
    image: '',
  ),

];

List<Activity> likesActivities = [
  Activity(
    profileImage: users[3].profileImage,
    subtitle: 'Gönderini Beğendi',
    timestamp: '4d',
    title: '',
    type: 'POST',
    username: users[3].username,
    image: posts[2].image,
  ),

  Activity(
    profileImage: users[3].profileImage,
    subtitle: 'Gönderini Beğendi',
    timestamp: '4d',
    title: '',
    type: 'POST',
    username: users[3].username,
    image: posts[2].image,
  ),

];

List<Activity> commentsActivities = [
  Activity(
    profileImage: users[2].profileImage,
    subtitle:
    'yorum: \"Bu not çok işime yaradı teşekkürler.\"',
    timestamp: '15m',
    title: '',
    type: 'POST',
    username: users[2].username,
    image: posts[2].image,
  ),
  Activity(
    profileImage: users[2].profileImage,
    subtitle:
    'yorum: \"Bu not çok işime yaradı teşekkürler.\"',
    timestamp: '15m',
    title: '',
    type: 'POST',
    username: users[2].username,
    image: posts[2].image,
  ),
];
List<Activity> followersActivities = [
  Activity(
    profileImage: users[1].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '1m',
    title: '',
    type: 'FOLLOWER',
    username: users[1].username,
    image: '',
  ),

  Activity(
    profileImage: users[2].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '4d',
    title: '',
    type: 'FOLLOWER',
    username: users[2].username,
    image: '',
  ),
  Activity(
    profileImage: users[1].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '1m',
    title: '',
    type: 'FOLLOWER',
    username: users[1].username,
    image: '',
  ),

  Activity(
    profileImage: users[2].profileImage,
    subtitle: 'Seni Takip Etmeye Başladı',
    timestamp: '4d',
    title: '',
    type: 'FOLLOWER',
    username: users[2].username,
    image: '',
  ),
];
