import 'package:scroll_repos/models/Repo.dart';
import 'package:scroll_repos/api/fetch.dart';
import 'package:scroll_repos/models/User.dart';
import 'package:scroll_repos/models/UserRepos.dart';
const kAPIBaseUrl = 'https://api.github.com/users';

class FetchRepos{

  Future<UserRepos> getUserRepos(login) async {
    final repoList = await fetchRepos(login);
    final user = await _fetchUser(login);

    return UserRepos(repoList, user);
  }

  static Future<List<Repo>> fetchRepos(String login) async{
    final String url = '$kAPIBaseUrl/$login/repos';
    final response = await Fetch.getData(url);

    List<Repo> repoList = List<Repo>.from(response.map((i) => Repo.fromJson(i)).toList());

    return repoList;
  }


  static Future<UserName> _fetchUser(String login) async {
    final String url =  '$kAPIBaseUrl/$login';
    final response = await Fetch.getData(url);

    return UserName.fromJson(response);
  }
}