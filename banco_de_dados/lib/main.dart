import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _recuperarBancoDados() async{

    final caminhoBancoDados = await getDatabasesPath();
    //print(caminhoBancoDados);
    final localBancoDados = join(caminhoBancoDados, "banco.db");
    
    var bd = await openDatabase(
        localBancoDados,
        version: 1,
        onCreate: (db,dbVersaoRecente){
          String sql= "CREATE TABLE usuarios (id INTEGER PRIMARY KEY, nome VARCHAR, idade INTEGER)";
          db.execute(sql);
        }
    );
    return bd;
    //print("gg " + bd.isOpen.toString());
  }
  
  _salvar() async{
    
    Database bd = await _recuperarBancoDados();
    Map<String, dynamic> dadosUsuario = {
      "nome":"Zurich destefanno",
      "idade": 46
    };
    int id = await bd.insert("usuarios", dadosUsuario);
    print("Id salvo: "+id.toString());
    
  }
  _listarBD() async {

    Database bd = await _recuperarBancoDados();
    String sql = "SELECT * FROM usuarios";
    List usuarios = await bd.rawQuery(sql);

    for( var usuario in usuarios){
      print(usuario['id']);
      print(usuario['nome']);
      print(usuario['idade']);
      print("");
    }

  }



  @override
  Widget build(BuildContext context) {
    //_salvar();
    _listarBD();
    return Container();
  }
}
