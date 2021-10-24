import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'repo_model.g.dart';

@JsonSerializable()
class APIUserQuery{

  factory APIUserQuery.fromJson(Map<String, dynamic> json) =>
    _$APIUserQueryFromJson(json);

    Map<String, dynamic> toJson() => _$APIUserQueryToJson(this);

    @JsonKey(name: "login")
    String login;
    String html_url;
    String avatar_url;
    List<APIRepoList> repos;

    APIUserQuery({
     required this.login,
     required this.html_url,
     required this.avatar_url,
     required this.repos,
    });

}

@JsonSerializable()
class APIRepoList {
  APIRepo repo;

  APIRepoList({
  required this.repo
  });

  factory APIRepoList.fromJson(Map<String, dynamic> json) =>
  _$APIRepoListFromJson(json);
  Map<String, dynamic> toJson() => _$APIRepoListToJson(this);
}

@JsonSerializable()
class APIRepo {
  String name;
  String html_url;
  String description;

  APIRepo({
    required this.name,
    required this.html_url,
    required this.description,
  });

  factory APIRepo.fromJson(Map<String, dynamic> json) =>
      _$APIRepoFromJson(json);
  Map<String, dynamic> toJson() => _$APIRepoToJson(this);
}




