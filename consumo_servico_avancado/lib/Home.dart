
import 'package:consumo_servico_avancado/Post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _urlBase = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> _recuperarPostagem() async{
    http.Response response = await http.get(_urlBase + "/posts");
    var dadosJson = json.decode(response.body) ;
    List<Post> postagens = [];

    for( var post in dadosJson ){
      Post p = Post(post["userId"], post["id"] ,post["title"], post["body"]);
      postagens.add(p);
    }
    return postagens;
  }

  _post() async {

    http.Response response = await http.post(
        _urlBase + "/posts",
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body:json.encode({
        "id": null,
        "title": "titulo",
        "body": "corpo da postagem",
        "userId": 120,
      })
    );
    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");
  }
  _put(){

  }
  _patch(){

  }
  _delete(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de servico avancado"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ElevatedButton(
                    onPressed: _post,
                  child: Text("Salvar"),
                ),
                ElevatedButton(
                  onPressed: _post,
                  child: Text("Atualizar"),
                ),
                ElevatedButton(
                  onPressed: _post,
                  child: Text("Remover"),
                )
              ],
            ),
            Expanded(
              child:FutureBuilder<List<Post>> ( //future = recuperar dados futuros levando um tempinho
                future: _recuperarPostagem(),
                builder: (context, snapshot){

                  switch(snapshot.connectionState){
                    case ConnectionState.none:
                    case ConnectionState.active:

                    case ConnectionState.waiting:
                      return Center(
                        child: CircularProgressIndicator(),
                      );

                    case ConnectionState.done:
                      if( snapshot.hasError){

                      }else{
                        return ListView.builder(
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index){
                              List<Post>? lista = snapshot.data;
                              Post post = lista![index];


                              return ListTile(
                                title: Text(post.title),
                                subtitle: Text(post.id.toString()),
                              );
                            }
                        );
                      }
                  }
                  return CircularProgressIndicator();
                },
              ),
            )


          ]
        ),
      )
    );
  }
}




