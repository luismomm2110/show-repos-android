import 'package:scroll_repos/models/Repo.dart';
import 'package:scroll_repos/models/UserName.dart';

class UserRepos{
  final UserName userData;
  final List<Repo> repoList;

  UserRepos(
      this.repoList,
      this.userData,
      );
}