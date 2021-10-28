import 'package:flutter/cupertino.dart';
import 'package:scroll_repos/components/repo_card.dart';
import 'package:scroll_repos/models/Repo.dart';
import 'package:flutter/material.dart';
import 'package:scroll_repos/repos_theme.dart';

class RepoListView extends StatelessWidget {
  final List<Repo> repoList;

  RepoListView({
    Key? key,
    required this.repoList,
  }) : super(key: key);

  final theme = Themes.darkTextTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Repository",
                    style: theme.headline1
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
                height: 300,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: repoList.length,
                  itemBuilder: (context, index) {
                    final repo = repoList[index];
                    return RepoCard(repo: repo);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 25);
                  },
                ))
          ],
        )
    );
  }

  Widget buildCard(Repo repo) {
    return RepoCard(repo: repo);
  }
}
