
import 'package:appcovid19/src/covid_models/casos_paises_model.dart';
import 'package:appcovid19/src/service/covid_service.dart';
import 'package:appcovid19/src/widget_personalizados/lista_paises.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';

class PrimerTab extends StatefulWidget {

  @override
  _PrimerTabState createState() => _PrimerTabState();
}

class _PrimerTabState extends State<PrimerTab> {
   
    List<Country> pais;

  @override
  Widget build(BuildContext context) {

    final covidService = Provider.of<CovidService>(context);
    
    return Scaffold(
      body: ListaPaises( covidService.paises ),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.red,
        closeManually: false,
        animatedIcon: AnimatedIcons.add_event,
        overlayColor: Colors.transparent,
        children:[
          SpeedDialChild(
            child: Icon(Icons.arrow_drop_down),
            label: "Ordenar de menor a mayor",            
            onTap: () { 
              setState(() {
                ordenarMenor(covidService.paises);
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.arrow_drop_up),
            label: "Ordenar de mayor a menor",
            onTap: () { 
              setState(() {
                ordenarMayor(covidService.paises);
              });
            },
          ),  
        ]
      )
    );  
  }

  ordenarMenor(List<Country>paises) {
      ListaPaises(paises);
      paises.sort((a,b) =>a.totalConfirmed.compareTo(b.totalConfirmed));
  }

  ordenarMayor(List<Country>paises){
    ListaPaises(paises);
      paises.sort((a,b) =>b.totalConfirmed.compareTo(a.totalConfirmed));
  }
} 

