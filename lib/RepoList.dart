import 'package:scroll_repos/Repo.dart';

class RepoList{
  final List<Repo> listRepos;

  RepoList(
  {
    required this.listRepos,
  });


  factory RepoList.fromJson(List<dynamic> parsedJson) {


    List<Repo> repoList = List<Repo>.from(parsedJson.map((i) => Repo.fromJson(i)).toList());

    return new RepoList(
      listRepos: repoList
    );
  }
}