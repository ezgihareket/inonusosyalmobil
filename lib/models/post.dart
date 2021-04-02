import 'package:insta_ui_kit/models/user.dart';

class Post {
  String image;
  String username;
  String profileImage;
  DateTime timestamp;
  String likes;
  String comments;
  String description;
  String location;
  List<Comment> comment;

  Post({
    this.comments,
    this.description,
    this.image,
    this.likes,
    this.profileImage,
    this.timestamp,
    this.username,
    this.location,
    this.comment,
  });

 /* Post(String image, String username,String profileImage,DateTime timestamp,String likes, String comments,String description,String location,List<Comment> comment){
this.image=image;
this.username=username;
this.profileImage=profileImage;
this.timestamp=timestamp;
this.likes=likes;
this.comments=comments;
this.description=description;
this.location=location;
this.comment=comment;
  }

  Post.fromJson(Map json){
    image = json["image"];
    username = json["username"];
    profileImage = json["profileImage"];
    timestamp = json["timestamp"];
    likes = json["likes"];
    comments = json["comments"];
    description = json["description"];
    comment = json["comment"];
  }

  Map toJson(){
    return {"image":image, "username":username, "profileImage":profileImage, "timestamp":timestamp, "likes":likes, "comments":comments, "description":description, "comment":comment};
  }*/


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

List<Post> posts = [
  Post(
    comments: '2',
    description:
        'Sınav Tarihleri, Kolay Gelsin.',
    image: 'assets/images/sinavtarihleri.PNG',
    likes: '67',
    profileImage: users[4].profileImage,
    timestamp: DateTime(2020, 10, 10, 15, 30),
    username: users[4].username,
    location: 'Malatya',
    comment: [
      Comment(
        comment: 'Sağolun Hocam',
        profileImage: users[1].profileImage,
        timestamp: '15min',
        username: users[1].username,
      ),
      Comment(
        comment:
            'Teşekkürler Hocam',
        profileImage: users[3].profileImage,
        timestamp: '15h',
        username: users[3].username,
      ),

    ],
  ),
  Post(
    comments: '9',
    description:
        'Arkadaşlar böyle bir hata aldım, yardımcı olur musunuz?',
    image: 'assets/images/hata.PNG',
    likes: '54',
    profileImage: users[2].profileImage,
    timestamp: DateTime(2020, 10, 10, 15, 30),
    username: users[2].username,
    location: 'Malatya',
    comment: [
      Comment(
        comment: 'Resimler yolunu güncellersen çözüleceğini düşünüyorum.',
        profileImage: users[1].profileImage,
        timestamp: '15min',
        username: users[1].username,
      ),
      Comment(
        comment:
            'Özelden yazıyorum.',
        profileImage: users[3].profileImage,
        timestamp: '15h',
        username: users[3].username,
      ),

    ],
  ),
  Post(
    comments: '1',
    description:
        'Malatya Büyükşehir Belediyesi Sağlık ve Sosyal Hizmetler Daire Başkanı Mustafa Katipoğlu, Engelli ve Yaşlı Hizmetleri Şube Müdürü Seyit Soner Yılmaz ve Koordinatör Mustafa Gürbüz teknoparkımızı ziyaret etti. Ziyarette Malatya da yaşayan engelli vatandaşlarımızın problemlerine yönelik teknolojik ve yazılım çözümleri istişare edildi.',
    image: 'assets/images/gönderipusula.jpg',
    likes: '16',
    profileImage: users[0].profileImage,
    timestamp: DateTime(2020, 10, 10, 15, 30),
    username: users[0].username,
    location: 'Malatya',
    comment: [


    ],
  ),

];
