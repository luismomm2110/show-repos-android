import 'package:flutter/material.dart';
import 'package:scroll_repos/UserName.dart';
import 'package:scroll_repos/RepoList.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(user.login, style: kNameStyle),
                    Text(repoList.listRepos[0].name!, style: kNameStyle),
                    Text(repoList.listRepos[0].description!, style: kNameStyle),
                    Text(repoList.listRepos[0].htmlUrl!, style: kNameStyle,)
                  ],
                 ),
                )
              ],
            )
          ),
        ),
      );
    }
  }