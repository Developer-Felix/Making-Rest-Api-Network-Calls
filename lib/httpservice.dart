


import 'dart:convert';

import 'package:api_call/postmodel.dart';
import 'package:http/http.dart';

class HttpService{
  final postsUrl = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  Future<List<Post>> getPosts() async{
    
    Response res = await get(postsUrl);
    if(res.statusCode == 200){
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts = body.map((dynamic item)=>Post.fromJson(item)).toList();
      return posts;
    }
    else{
      throw "Can't get post";
    }
  }
}