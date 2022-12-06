import 'package:flutter/material.dart';

class ListaFilmes extends StatefulWidget {

  @override
  State<ListaFilmes> createState() => _ListaFilmesState();
}

class _ListaFilmesState extends State<ListaFilmes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Filmes"),
        actions: <Widget>[
      IconButton(
      icon: const Icon(Icons.info),
      tooltip: 'Equipe',
      onPressed: () {
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text("Melhor Equipe:"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("André D'Albuquerque Torreão"),
                Text("Rafael Nunes de Sá Santos"),
                Text("Thiago Santos Alves")
              ]
            ),
            actions: [TextButton(
                onPressed: (){Navigator.of(context).pop();},
                child: Text("Ok"))],
          );
        });
      },)],
      ),
      body: ListView.builder(
        itemCount: 3,
          itemBuilder: (context,index){
            return _build(index);
      }),
    );
  }
  Dismissible _build(index){
    return Dismissible(
      background: Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.delete, color: Colors.white,),
          ],
        ),
      ),
      direction: DismissDirection.endToStart,
      key: ValueKey("1234567"),
      child: Container(
        child: Card(
          child: Row(
            children: [
              SizedBox(
                height: 170,
                width: 170,
                child: Image.network("https://br.web.img3.acsta.net/pictures/19/12/16/15/00/5548914.jpg", fit: BoxFit.fitHeight,),
              ),
              Container(
                child: Column(
                  children: [
                    Title(color: Colors.black, child: Text("Top Gun Maverick")),
                    Text("Ação, Aventura e Drama"),
                    Text("2h 11min")
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
