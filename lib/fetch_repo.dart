import 'package:scroll_repos/Repo.dart';
import 'package:scroll_repos/fetch.dart';
import 'package:scroll_repos/UserName.dart';
import 'RepoList.dart';

const kAPIBaseUrl = 'https://api.github.com/users';

class FetchRepos{
  static Future<RepoList> fetchRepos(String login) async{
    final String url = '$kAPIBaseUrl/$login/repos';
    final response = await Fetch.getData(url);

    return RepoList.fromJson(response);
  }

  static Future<UserName> fetchUser(String login) async {
    final String url =  '$kAPIBaseUrl/$login';
    final response = await Fetch.getData(url);

    return UserName.fromJson(response);

  }



}