
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

  _post() async { // adiciona dados dentro de uma API


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
  _put() async { // Atualiza dados dentro de uma API (atualizaTudo)
    http.Response response = await http.put(
        _urlBase + "/posts/2", // id=2

        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
        body:json.encode({
          "id": null,
          "title": "titulo alterado",
          "body": "corpo da postagem alterada",
          "userId": 120,
        })
    );
    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");

  }
  _patch() async { //patch atualiza parte
    http.Response response = await http.put(
        _urlBase + "/posts/2", // id=2

        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
        body:json.encode({
          "body": "corpo da postagem alterada com patch",
        })
    );
    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");
  }
  _delete() async{
    http.Response response = await http.delete(
        _urlBase + "/posts/2" // deletar id=2
    );
    // if( response.statusCode == 200) { // status ok
    //   //sucesso
    // }else{
    //   //avise algo
    // }

    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");
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
                  onPressed: _patch,
                  child: Text("Atualizar "),
                ),

                ElevatedButton(
                  onPressed: _delete,
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




