class UserName{
  UserName({
    required this.login
});

  final String login;

  factory UserName.fromJson(Map<String, dynamic> json) => UserName(
        login: json["login"],
        );
}