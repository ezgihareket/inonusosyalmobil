import 'package:insta_ui_kit/models/user.dart';

class Review {
  String name;
  String username;
  int rating;
  String review;
  String timestamp;
  String profileImage;

  Review({
    this.name,
    this.rating,
    this.review,
    this.timestamp,
    this.username,
    this.profileImage,
  });
}

List<Review> reviews = [
  Review(
    name: users[1].fullName,
    rating: 5,
    review:
        'Katılmanızı Tavsiye Ederim, Çok Faydalı.',
    timestamp: '1 Ekim 2021',
    username: users[1].username,
    profileImage: users[1].profileImage,
  ),
  Review(
    name: users[3].fullName,
    rating: 4,
    review:
        'İyi Düşünülmüş Bir Grup.',
    timestamp: '25 Ağustos 2021',
    username: users[3].username,
    profileImage: users[3].profileImage,
  ),

];
