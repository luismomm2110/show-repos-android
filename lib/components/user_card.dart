import 'package:flutter/cupertino.dart';
import 'package:scroll_repos/api/fetch_repo.dart';
import 'package:scroll_repos/models/UserName.dart';
import 'package:scroll_repos/models/UserRepos.dart';
import 'package:scroll_repos/screens/result_screen.dart';

class UserCard extends StatelessWidget {
  String avatar;
  String userName;

  UserCard({required this.userName, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: SafeArea(
        child: Column(
            children: [
              Text(userName, style: kNameStyle)
            ]
        )
      )
    );
  }
}