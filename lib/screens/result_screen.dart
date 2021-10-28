import 'package:flutter/material.dart';
import 'package:scroll_repos/api/fetch_repo.dart';
import 'package:scroll_repos/components/repo_list_view.dart';
import 'package:scroll_repos/components/user_card.dart';
import 'package:scroll_repos/models/UserRepos.dart';
import 'package:url_launcher/url_launcher.dart';

const kPlaceholderImg = '../assets/octocat.png';

const kNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.userLogin});

  final String? userLogin;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FetchRepos().getUserRepos(userLogin),
      builder: (context, AsyncSnapshot<UserRepos> snapshot) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            height: 800,
            child: SafeArea(
              child: Column(
                children: [
                  UserCard(
                      userName: snapshot.data?.userData.login ?? "",
                      avatar: snapshot.data?.userData.avatar ?? ""),
                  RepoListView(repoList: snapshot.data?.repoList ?? []),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
