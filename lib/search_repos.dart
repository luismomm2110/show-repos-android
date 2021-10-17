import "package:flutter/material.dart";

class SearchRepo extends StatefulWidget {
  const SearchRepo({Key? key}) : super(key: key);

  @override
  _SearchRepoState createState() => _SearchRepoState();
}

class _SearchRepoState extends State<SearchRepo> {
  String? userLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Text('Text Github login',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                  onChanged: (value) {
                    userLogin = value;
                  },
                ),
              ),
              TextButton(
                  onPressed: () async {
                    UserRepo userRepo = await FetchRepos.fetchRepos(
                      userName!.toLowerCase());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return RepoMenu(userName: userName);
                      }),
                    );
                  },
                  child: Text(
                    'Search for repositories of a user!',
                    style: TextStyle(
                        fontSize: 20.0,
                      )
                    ),
                  )
              ]
            ),
          ),
        )
      );
  }
}