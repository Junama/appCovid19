
import 'package:appcovid19/src/covid_models/casos_paises_model.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

final _urlCovid = "https://api.covid19api.com";

class CovidService with ChangeNotifier {

    List<Country> paises = [];
    
    CovidService(){

      this.getPaises();

    }

    getPaises() async{
      
      final url = "$_urlCovid/summary";
      final resp = await http.get(url);

      final datosCovidPaises = datosCovidFromJson( resp.body );

      this.paises.addAll( datosCovidPaises.countries );
      datosCovidPaises.toString();
      notifyListeners();

    } 
}

    

