import 'package:flutter/material.dart';
import 'package:scroll_repos/api/fetch_repo.dart';
import 'package:scroll_repos/components/repo_list_view.dart';
import 'package:scroll_repos/components/user_card.dart';
import 'package:scroll_repos/models/UserRepos.dart';
import 'package:url_launcher/url_launcher.dart';

const kNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.userLogin});

  final String? userLogin;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext build, BoxConstraints viewportConstraints) {
        return FutureBuilder(
          future: FetchRepos().getUserRepos(userLogin),
          builder: (context, AsyncSnapshot<UserRepos> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Scaffold(
                backgroundColor: Colors.black,
                body: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: SafeArea(
                      child: Column(
                        children: [
                          UserCard(
                              userName: snapshot.data?.userData.login ?? "",
                              avatar: snapshot.data?.userData.avatar ?? ""),
                          SizedBox(height: 15),
                          RepoListView(repoList: snapshot.data?.repoList ?? []),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              String _resultUrl =
                                  snapshot.data?.userData.htmlUrl ?? "";
                              _resultUrl != "" ? launch(_resultUrl) : null;
                            },
                            child: Text(
                              "Visit User Profile",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey,
                                fixedSize: const Size(300, 100),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        );
      },
    );
  }
}
