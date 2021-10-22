import 'package:flutter/material.dart';
import 'package:scroll_repos/RepoSlider.dart';
import 'package:scroll_repos/UserName.dart';

const kNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.user});

  final UserName user;

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
                     RepoSlider(userLogin: user.login)
                  ],
                 ),
                ),
              ],
            )
          ),
        ),
      );
    }
  }