class Repo {
  Repo ({
    required this.name, this.description, required this.htmlUrl,
  });

  final String? name;
  final String? htmlUrl;
  final String? description;

  factory Repo.fromJson(Map<String, dynamic> json) {
    return new Repo(
      name: json['name'],
      description: json['description'] == null ? "" : json["description"],
      htmlUrl: json['html_url'],
    );
  }
}