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
    //String sql = "SELECT * FROM usuarios WHERE id = 5 ";
    //String sql = "SELECT * FROM usuarios WHERE idade >= 30 AND idade <= 58";
    //String sql = "SELECT * FROM usuarios WHERE idade BETWEEN 18 AND 46 ";
    //String sql = "SELECT * FROM usuarios WHERE idade IN (18,30) ";
    //String filtro = "an";
    //String sql = "SELECT * FROM usuarios WHERE nome LIKE '%" + filtro + "%' ";
    //String sql = "SELECT *, UPPER(nome) as nomeMaiu FROM usuarios WHERE 1=1 ORDER BY UPPER(nome) DESC ";//ASC, DESC
    String sql = "SELECT *, UPPER(nome) as nomeMaiu FROM usuarios WHERE 1=1 ORDER BY idade DESC LIMIT 3";//ASC, DESC
    List usuarios = await bd.rawQuery(sql);

    for( var usuario in usuarios){
      print(usuario['id']);
      print(usuario['nome']);
      print(usuario['idade']);
      print(usuario['id']);
    }

  }

  _listarBDById(int id) async {

    Database bd = await _recuperarBancoDados();

    List usuarios = await bd.query(
      "usuarios",
      columns: ["id", "nome" , "idade"],
      where: "id = ? ",    // "id = ? AND nome = ?"
      whereArgs: [id]
    );

    for( var usuario in usuarios){
      print(usuario['id']);
      print(usuario['nome']);
      print(usuario['idade']);
      print("");
    }

  }

  _excluirBDById(int id) async {
    Database bd = await _recuperarBancoDados();
    bd.delete(
      "usuarios",
      where: "id = ?",
      whereArgs: [id]

    );
  }

  @override
  Widget build(BuildContext context) {
    //_salvar();
    //_listarBD();
    _listarBDById(3);
    return Container();
  }
}
