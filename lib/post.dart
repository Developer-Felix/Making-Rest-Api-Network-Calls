import 'package:api_call/httpservice.dart';
import 'package:api_call/postmodel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostPage extends StatelessWidget {
  HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [],backgroundColor: Colors.red,title: Text("My List From Api"),),
      body: FutureBuilder(builder:(BuildContext context,AsyncSnapshot<List<Post>> snapshot){
        if(snapshot.hasData){
         List<Post>? posts = snapshot.data;
          return ListView(
            children: posts!.map((Post post) => ListTile(title: Text(post.title),)).toList()
            
          );
        }
        return Center(child: CircularProgressIndicator());
      } ,future: httpService.getPosts(),)
    );
  }
}



