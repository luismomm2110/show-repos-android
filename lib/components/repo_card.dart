import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scroll_repos/models/Repo.dart';

class RepoCard extends StatelessWidget {
  final Repo repo;

  const RepoCard({Key? key, required this.repo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
            borderRadius: BorderRadius.circular(20.0)),
            constraints: BoxConstraints(
              maxWidth: 350,
            ),
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  children: [
                    Flexible(
                        child: Text(
                      repo.name!,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ))
                  ],
                ),
                SizedBox(height: 40),
                Text(repo.description!,
                    style: TextStyle(fontSize: 25, color: Colors.black)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
