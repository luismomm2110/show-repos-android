import 'package:flutter/material.dart';
import 'package:scroll_repos/api/fetch_repo.dart';
import 'package:scroll_repos/components/repo_list_view.dart';
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
          return Column(
            children: [
              Text("foo"),
              RepoListView(repoList: snapshot.data?.repoList ?? []),
        ]
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
