import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:insta_ui_kit/config/colors.dart';
import 'package:insta_ui_kit/models/user.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      width: size.width * 0.95,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: kOffWhite,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 40.0,
                height: 40.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    currentUser.profileImage,
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: 'Bir şeyler yaz...'),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () => print('Video'),
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text('Video'),
                ),
                const VerticalDivider(width: 8.0,),
                SizedBox(
                  height: 25.0,
                  child: FlatButton.icon(
                    onPressed: () => print('Fotoğraf'),
                    icon: Image.asset('assets/images/photo.png'),
                    label: Text('Fotoğraf'),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () => print('Toplantı'),
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  label: Text('Toplantı'),
                ),
                const VerticalDivider(width: 8.0,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
