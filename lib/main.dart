import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:scroll_repos/search_repos.dart";


void main() {
  runApp(ScrollRepos());
}

class ScrollRepos extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchRepo(),
    );
  }
}
