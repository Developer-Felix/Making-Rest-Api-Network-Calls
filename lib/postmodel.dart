import 'package:flutter/cupertino.dart';

class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({required this.userId,required this.id,required this.body,required this.title});
  factory Post.fromJson(Map<String , dynamic> json){
    return Post(body: json['body'] as String,id: json['id'] as int,userId: json['userId'] as int,title: json['title'] as String);
  }
}