import 'package:scroll_repos/models/RepoList.dart';
import 'package:scroll_repos/models/User.dart';

class UserRepos{
  final UserName user;
  final RepoList repoList;

  UserRepos (
      this.repoList,
      this.user,
      );
}