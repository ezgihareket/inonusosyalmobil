
class User {
  String bio;
  String fullName;
  String profileImage;
  String username;
  List<Followers> followers;
  List<Following> following;

  User({
    this.bio,
    this.fullName,
    this.profileImage,
    this.username,
    this.followers,
    this.following,
  });


  User.fromJson(Map<String, dynamic> json){
    bio=json['bio'];
    fullName=json['fullName'];
    profileImage=json['profileImage'];
    username=json['username'];
    followers=json['followers'];
    following=json['following'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bio']=this.bio;
    data['fullName']=this.fullName;
    data['profileImage']=this.profileImage;
    data['username']=this.username;
    data['followers']=this.followers;
    data['following']=this.following;
    return data;
  }


}





class Followers {
  bool following;
  String fullName;
  String username;
  String profileImage;

  Followers({
    this.following,
    this.username,
    this.fullName,
    this.profileImage,
  });

  factory Followers.fromMap(Map<String, dynamic> followersMap) {
    return Followers(
      following: followersMap['following'],
      username: followersMap['username'],
      fullName: followersMap['fullName'],
      profileImage: followersMap['profileImage'],
    );
  }
}

class Following {
  String fullName;
  String username;
  String profileImage;

  Following({
    this.username,
    this.fullName,
    this.profileImage,
  });

  factory Following.fromMap(Map<String, dynamic> followingMap) {
    return Following(
      username: followingMap['username'],
      fullName: followingMap['fullName'],
      profileImage: followingMap['profileImage'],
    );
  }
}


List<User> users = [
  User(
    bio:
        'İnönü Üniversitesi\nBilgisayar Mühendisliği',
    fullName: 'Efdal Akın Barsan',
    profileImage: 'assets/images/efdalprofil.jpg',
    username: 'efdalakinbarsan',
  ),
  User(
    bio:
        'İnönü Üniversitesi\nBilgisayar Mühendisliği',
    fullName: 'Ezgi Hareket',
    profileImage: 'assets/images/ezgiprofil.jpg',
    username: 'ezgihareket',
  ),
  User(
    bio:
        'İnönü Üniversitesi\nBilgisayar Mühendisliği',
    fullName: 'Samet Akbal',
    profileImage: 'assets/images/sametprofil.jpg',
    username: 'sametakbal',
  ),
  User(
    bio:
        'İnönü Üniversitesi\nBilgisayar Mühendisliği',
    fullName: 'Asya Ada',
    profileImage: 'assets/images/person_3.jpg',
    username: 'asyaada',
  ),
  User(
    bio:
        'İnönü Üniversitesi\nBilgisayar Mühendisliği',
    fullName: 'Kenan İnce',
    profileImage: 'assets/images/kenaninceprofil.jpg',
    username: 'kenanince',
  ),
  User(
    bio:
        'İnönü Üniversitesi\nBilgisayar Mühendisliği',
    fullName: 'Faruk Alaçatı',
    profileImage: 'assets/images/person_5.jpg',
    username: 'farukalacati',
  ),
];

List<Followers> followersList = [
  Followers(
    following: true,
    fullName: users[1].fullName,
    profileImage: users[1].profileImage,
    username: users[1].username,
  ),
  Followers(
    following: false,
    fullName: users[2].fullName,
    profileImage: users[2].profileImage,
    username: users[2].username,
  ),
  Followers(
    following: true,
    fullName: users[3].fullName,
    profileImage: users[3].profileImage,
    username: users[3].username,
  ),
  Followers(
    following: true,
    fullName: users[4].fullName,
    profileImage: users[4].profileImage,
    username: users[4].username,
  ),
];

List<Following> followingList = [
  Following(
    fullName: users[1].fullName,
    profileImage: users[1].profileImage,
    username: users[1].username,
  ),
  Following(
    fullName: users[2].fullName,
    profileImage: users[2].profileImage,
    username: users[2].username,
  ),
  Following(
    fullName: users[3].fullName,
    profileImage: users[3].profileImage,
    username: users[3].username,
  ),
  Following(
    fullName: users[4].fullName,
    profileImage: users[4].profileImage,
    username: users[4].username,
  ),
];
