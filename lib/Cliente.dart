import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Cliente extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ClientePage(),
      ),
    );
  }
}


class ClientePage extends StatelessWidget{

  var url = "http://10.0.2.2:8012/Practica1/getParametros.php?pedir";
  //Since the emulator is using this port I had to use it too by setting my localhost + the port the emulator uses :D
  var url2 = "http://10.0.2.2:8012/Practica1/postParametros.php?pedir";

  Future<String> pedirDatos() async{

    var respuesta2 = await http.get(url);
    print(respuesta2.body);
  }

  Future<String> obtenerDatos() async{

    var respuesta = await http.post(url2,body: {"pedir":"obtenida"});
    print(respuesta.body);
  }

  @override
Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
      title: Center(child: new Text("Cliente ligero",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      )
    ),
      ),
    body:Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Get',style: TextStyle(fontSize: 20.0,),),
          RaisedButton(
            onPressed: () {pedirDatos();},
            child: const Text('Obtener Datos',
                style: TextStyle(fontSize: 20)),
          ),
          Text('Dato desde Get', style: TextStyle(fontSize: 20.0,decoration: TextDecoration.underline),),
          Text('Post', style: TextStyle(fontSize: 20, height: 5.0)),
          RaisedButton(
            onPressed: () {obtenerDatos();},
            child: const Text('Obtener Datos', style: TextStyle(fontSize: 20)),
          ),
          Text('Dato desde Post', style: TextStyle(fontSize: 20.0,decoration: TextDecoration.underline),),
        ],
      ),

    ),
      ),

    );
  }

}