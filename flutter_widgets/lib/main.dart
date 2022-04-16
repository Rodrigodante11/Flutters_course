import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _lista = ["Maria" , "Joao" , "Rodrigo" , "Carla"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wdgets"),),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _lista.length,
              itemBuilder:(context, index) {

                final item =_lista[index];

                return Dismissible(
                  direction: DismissDirection.horizontal,
                    key: Key(item),
                    child: ListTile(
                      title: Text(item),
                    ),
                  background: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.remove_circle_sharp,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  onDismissed: (direction){

                    if( direction == DismissDirection.endToStart){
                        print("usuario arrastou do fim pro comeco");
                    }else if ( direction == DismissDirection.startToEnd){
                      print("usuario arrastou do comeco pro fim");
                      setState(() {
                        _lista.removeAt(index);
                      });
                    }

                    //print(direction.toString());
                  },
                );
              }
            ),
          )

        ],
      )
    );
  }
}
