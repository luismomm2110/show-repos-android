import 'package:flutter/material.dart';
import 'package:scroll_repos/models/User.dart';
import 'package:scroll_repos/models/RepoList.dart';

const kPlaceholderImg = '../assets/octocat.png';

const kNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.user, required this.repoList});

  final UserName user;
  final RepoList repoList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: FadeInImage.assetNetwork(
                  placeholder: kPlaceholderImg,
                  image: user.avatar,
                  imageScale: 0.1,
                  height: 3,
                )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(user.login, style: kNameStyle),
                ],
              ),
              Expanded(
                flex: 2,
                child:
                Container(
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Text("Repository",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                )
                            ),
                            SizedBox(height: 20),
                            Row(
                            children: [
                              Text(repoList.listRepos[0].name!, style: TextStyle(
                                  fontSize: 25)
                              ),
                            ],
                          ),
                            SizedBox(height: 40),
                            Text(repoList.listRepos[0].description!,
                                style: TextStyle( fontSize: 25)),
                        ],
                      ),
                     ),
                  )
              ],
            )
          ),
        ),
      );
    }
  }