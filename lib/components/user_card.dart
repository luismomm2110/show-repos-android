import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_repos/screens/result_screen.dart';

import '../repos_theme.dart';

class UserCard extends StatelessWidget {
  String avatar;
  String userName;

  final theme = Themes.darkTextTheme;

  UserCard({required this.userName, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
        child: Column(
            children: [
              Expanded(
                child: FadeInImage.assetNetwork(
                    placeholder: '/home/luismomm/Documents/Graduação/Mobile/show-repos-android/assets/octocat.png',
                    image: this.avatar),
              ),
              Text(userName, style: theme.headline2)
            ]
        )
    );
  }
}