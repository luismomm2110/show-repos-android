import "package:flutter/material.dart";
import 'package:scroll_repos/screens/result_screen.dart';
import 'package:scroll_repos/repos_theme.dart';

class SearchRepo extends StatefulWidget {
  const SearchRepo({Key? key}) : super(key: key);

  @override
  _SearchRepoState createState() => _SearchRepoState();
}

class _SearchRepoState extends State<SearchRepo> {
  String? userLogin;

  final theme = Themes.dark();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show your repos', style: theme.textTheme.headline6),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                    onChanged: (value) {
                      userLogin = value;
                    },
                  ),
                ),
                  Text(
                    'Insert a Github username',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                SizedBox(height: 150),
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ResultScreen(userLogin: userLogin!);
                        }),
                      );
                    },
                    child: Text(
                      "Find Repos!",
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
