import 'package:scroll_repos/fetch.dart';

const kAPIBaseUrl = 'https://api.github.com/users/';

class FetchRepos{
  static Future<Repo> fetchRepos(String login) async{
    final String url = '$kAPIBaseUrl/$login';
    final response = await Fetch.getData(url);

    return Repo.fromJson(response);
  }
}