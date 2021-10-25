import 'package:scroll_repos/models/RepoList.dart';

class UserName{
  UserName({
    required this.login, required this.avatar,
});

  final String avatar;
  final String login;

  factory UserName.fromJson(Map<String, dynamic> json) => UserName(
        login: json["login"],
        avatar: json["avatar_url"],
        );
}