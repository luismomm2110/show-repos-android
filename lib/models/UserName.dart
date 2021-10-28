class UserName{
  UserName({
    required this.login, required this.avatar, required this.htmlUrl,
});

  final String avatar;
  final String login;
  final String htmlUrl;

  factory UserName.fromJson(Map<String, dynamic> json) => UserName(
        login: json["login"],
        avatar: json["avatar_url"],
        htmlUrl: json["html_url"]
        );
}