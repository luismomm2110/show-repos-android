import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../repos_theme.dart';

class UserCard extends StatelessWidget {
  final String userName;
  final String avatar;
  final theme = Themes.darkTextTheme;
  final double kRadiusAvatar = 120;
  final String kPlaceHolderAvatar = 'assets/octocat.png';

  UserCard({required this.userName, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: kRadiusAvatar,
            backgroundColor: Colors.white,
            child: this.avatar != ""
                ? CircleAvatar(
                    backgroundImage: NetworkImage(this.avatar),
                    radius: kRadiusAvatar - 5,
                  )
                : SizedBox(height: 10),
          ),
          Text(userName, style: theme.headline2)
        ],
      ),
    );
  }
}
