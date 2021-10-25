import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scroll_repos/screens/search_repos.dart';


void main() {
  runApp(ScrollRepos());
}

class ScrollRepos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchRepo(),
    );
  }
}
