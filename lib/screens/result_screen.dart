import 'package:flutter/material.dart';
import 'package:scroll_repos/api/fetch_repo.dart';
import 'package:scroll_repos/models/User.dart';
import 'package:scroll_repos/models/RepoList.dart';
import 'package:scroll_repos/models/UserRepos.dart';

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
        if (snapshot.connectionState == ConnectionState.done) {
          final userRepos = snapshot.data?.repoList ?? [];
          return Center(
            child: Container(
              child: const Text("Repo"),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}