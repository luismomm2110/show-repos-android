import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scroll_repos/screens/result_screen.dart';

import '../repos_theme.dart';

class UserCard extends StatelessWidget {
  String userName;
  String avatar;
  final theme = Themes.darkTextTheme;


  UserCard({required this.userName, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
        child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child : CircleAvatar(
                  backgroundImage: NetworkImage(this.avatar),
                  radius: 75,
                )
              ),
              Text(userName, style: theme.headline2)
            ]
        )
    );
  }
}