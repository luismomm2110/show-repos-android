// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIUserQuery _$APIUserQueryFromJson(Map<String, dynamic> json) {
  return APIUserQuery(
    login: json['login'] as String,
    html_url: json['html_url'] as String,
    avatar_url: json['avatar_url'] as String,
    repos: (json['repos'] as List)
        ?.map((e) =>
            e == null ? null : APIRepoList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$APIUserQueryToJson(APIUserQuery instance) =>
    <String, dynamic>{
      'login': instance.login,
      'html_url': instance.html_url,
      'avatar_url': instance.avatar_url,
      'repos': instance.repos,
    };

APIRepoList _$APIRepoListFromJson(Map<String, dynamic> json) {
  return APIRepoList(
    repo: json['repo'] == null
        ? null
        : APIRepo.fromJson(json['repo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$APIRepoListToJson(APIRepoList instance) =>
    <String, dynamic>{
      'repo': instance.repo,
    };

APIRepo _$APIRepoFromJson(Map<String, dynamic> json) {
  return APIRepo(
    name: json['name'] as String,
    html_url: json['html_url'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$APIRepoToJson(APIRepo instance) => <String, dynamic>{
      'name': instance.name,
      'html_url': instance.html_url,
      'description': instance.description,
    };
