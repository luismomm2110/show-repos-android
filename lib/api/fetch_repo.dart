import 'package:scroll_repos/models/Repo.dart';
import 'package:scroll_repos/api/fetch.dart';
import 'package:scroll_repos/models/User.dart';
import '../models/RepoList.dart';

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