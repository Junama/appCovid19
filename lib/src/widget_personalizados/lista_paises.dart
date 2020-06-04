
import 'package:appcovid19/src/covid_models/casos_paises_model.dart';
import 'package:flutter/material.dart';

class ListaPaises extends StatelessWidget {
  
  final List<Country> paises;
 
  const ListaPaises(this.paises);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: this.paises.length,
      itemBuilder: ( BuildContext context, int index ){
        return _Paises( pais: this.paises[index], index: index );
      },
    );
  }
}

class _Paises extends StatelessWidget {

  final Country pais;
  final int index;

  const _Paises({ @required this.pais, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _TarjetaLista( pais, index ),
      ],
    );
  }
}

class _TarjetaLista extends StatelessWidget {
  
  final Country pais;
  final int index;
 
  const _TarjetaLista(this.pais, this.index);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(30.0), 
            side: BorderSide(width: 2, color: Colors.indigo),
          ),
          child: Column(
            children: <Widget> [
            ListTile(
              leading: Icon(Icons.chevron_right, color: Colors.deepPurple, size: 40),
              title: Text( "${ index + 1 }.${ pais.country }", style: TextStyle( color: Colors.deepPurple, fontSize: 25)),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              subtitle:  Text( "Total casos: ${ pais.totalConfirmed }", style: TextStyle( color: Colors.deepPurple, fontSize: 15, fontWeight: FontWeight.bold)), 
             ),//
            Row(
              mainAxisAlignment: MainAxisAlignment.end,//Coloca los botones a la derecha
              children: <Widget> [
                FlatButton(
                  child: Text("Detalle", style: TextStyle( fontSize: 15),),
                  onPressed:(){
                    _detalleAlerta(context);                               
                  },
                )
              ],
             )
            ],
          )
        );
      }

      void _detalleAlerta(BuildContext context){
      
        //final Country pais;    
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              title: Text("Detalle País"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Pais :" + pais.country, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                  Text("Codigo Pais: " + pais.countryCode,style: TextStyle(fontWeight: FontWeight.bold)),
                  //Text(pais.date.toString()),
                  Text("Casos Confirmados:" + pais.newConfirmed.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Nuevas Muertes:" + pais.newDeaths.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Nuevos recuperados:" + pais.newRecovered.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Total Confirmados:" + pais.totalConfirmed.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Total Muertes:" + pais.totalDeaths.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Total recuperados:" + pais.totalRecovered.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("==================")
                ],
              ),
              actions: <Widget>[
                FlatButton( 
                  child: Text("Volver"),
                   onPressed: ()=> Navigator.of(context).pop(),
                ),
              ],
            );
          }
        );
      }
    }