import 'dart:ui';

import 'package:appcovid19/src/service/stats_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class SegundoTab extends StatefulWidget {

  @override
  _SegundoTabState createState() => _SegundoTabState();
}

class _SegundoTabState extends State<SegundoTab> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _datos(this.context)
              ]
            ),
          ),
        ],
      ),
   );
   
}

  Widget _datos(BuildContext context){

    final covidStats = Provider.of<CovidStats>(context);

    return covidStats.statsCovid == null?Container():Column(
      children: <Widget>[

        Text("Total Contagiados : " + covidStats.statsCovid.total.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontStyle: FontStyle.italic )),
        Divider(),
        Text("Total Paises Contagiados : " + covidStats.statsCovid.countries.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontStyle: FontStyle.italic )),
        Divider(),
        Text("Estadísticas : " + covidStats.statsCovid.stats.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontStyle: FontStyle.italic )),
        Divider(),
        Text("Estadísticas Covid por defecto : " + covidStats.statsCovid.statsCovidDefault.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontStyle: FontStyle.italic )),
        Divider(),
        Text("Resumen : " + covidStats.statsCovid.summary.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontStyle: FontStyle.italic )),
      ],
    );
  }
  
  Widget _fondoApp(){
    
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(155, 70, 175, 1.0),
            Color.fromRGBO(125, 33, 129, 1.0)
          ],
          ),
      )
    );

    final cajaBlanca = Transform.rotate(
      angle: -pi / -10.0,
       child: Container(
              height: 225.0,
              width : 355.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                gradient    : LinearGradient(
                   colors: [
                     Colors.white38,
                     Colors.white
                   ],
                ), 
              ),
        ),
      );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaBlanca,
          )
      ],
    );
  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text( "Estadísticas Global Covid19", style: TextStyle( color: Colors.purple, fontSize: 23.0, fontWeight: FontWeight.bold ),),
            Divider(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}



     

