import 'package:insta_ui_kit/models/user.dart';

class Like {
  String username;
  String profileImage;
  String fullName;
  bool following;

  Like({
    this.profileImage,
    this.username,
    this.following,
    this.fullName,
  });
}

List<Like> likes = [
  Like(
    profileImage: users[1].profileImage,
    username: users[1].username,
    following: true,
    fullName: users[1].fullName,
  ),
  Like(
    profileImage: users[2].profileImage,
    username: users[2].username,
    following: true,
    fullName: users[2].fullName,
  ),
  Like(
    profileImage: users[3].profileImage,
    username: users[3].username,
    following: false,
    fullName: users[3].fullName,
  ),
  Like(
    profileImage: users[5].profileImage,
    username: users[5].username,
    following: true,
    fullName: users[5].fullName,
  ),
  Like(
    profileImage: users[4].profileImage,
    username: users[4].username,
    following: false,
    fullName: users[4].fullName,
  ),
  Like(
    profileImage: users[1].profileImage,
    username: users[1].username,
    following: true,
    fullName: users[1].fullName,
  ),
  Like(
    profileImage: users[2].profileImage,
    username: users[2].username,
    following: true,
    fullName: users[2].fullName,
  ),
  Like(
    profileImage: users[3].profileImage,
    username: users[3].username,
    following: false,
    fullName: users[3].fullName,
  ),
  Like(
    profileImage: users[5].profileImage,
    username: users[5].username,
    following: true,
    fullName: users[5].fullName,
  ),
  Like(
    profileImage: users[4].profileImage,
    username: users[4].username,
    following: false,
    fullName: users[4].fullName,
  ),
];
