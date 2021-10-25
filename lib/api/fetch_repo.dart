import 'package:scroll_repos/models/Repo.dart';
import 'package:scroll_repos/api/fetch.dart';
import 'package:scroll_repos/models/User.dart';
import 'package:scroll_repos/models/UserRepos.dart';
import '../models/RepoList.dart';

const kAPIBaseUrl = 'https://api.github.com/users';

class FetchRepos{

  Future<UserRepos> getUserRepos(login) async {
    final repoList = await _fetchRepos(login);
    final user = await _fetchUser(login);

    return UserRepos(repoList, user);
  }

  static Future<RepoList> _fetchRepos(String login) async{
    final String url = '$kAPIBaseUrl/$login/repos';
    final response = await Fetch.getData(url);

    return RepoList.fromJson(response);
  }

  static Future<UserName> _fetchUser(String login) async {
    final String url =  '$kAPIBaseUrl/$login';
    final response = await Fetch.getData(url);

    return UserName.fromJson(response);
  }
}