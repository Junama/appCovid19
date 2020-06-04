
import 'package:appcovid19/src/covid_models/stats_paises_model.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

final _urlCovid = "https://api.covid19api.com";

class CovidStats with ChangeNotifier {

    StatsCovid statsCovid;
    
    CovidStats(){

      this.getStats();

    }

    getStats() async{
      
      final url = "$_urlCovid/stats";
      final resp = await http.get(url);

      final statusCovidPaises = statsCovidFromJson( resp.body );
      statsCovid = statusCovidPaises;
      statusCovidPaises.toString();
      notifyListeners();

    }
}
