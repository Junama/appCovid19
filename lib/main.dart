
import 'package:appcovid19/src/pages/home_page.dart';
import 'package:appcovid19/src/service/covid_service.dart';
import 'package:appcovid19/src/service/stats_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_)=> CovidService()),
          ChangeNotifierProvider(create: (_)=> CovidStats()),
        ],
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: TabPage(),
        theme: ThemeData(
          primaryColor: Colors.deepPurple
        ),
      ),
    );
  }
}