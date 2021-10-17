class UserName{
  UserName({
    required this.userName,
    required this List<Repo> repos,
})

  final String userName;
  final List<Repo> repos;

  factory UserName.fromJson(Map<String, dynamic> json) => UserName(
        userName: json["userName"],
        repos: List<Repo>.from(json["repos"].map((x) => Repo.fromJson(x))
        )
  );

  String getRepos() {
    List<String> reposList = [];

    for (final repo in repos) {
      reposList.add(repo.repo.name);
    }

    return reposList.join(", ");
  }


}