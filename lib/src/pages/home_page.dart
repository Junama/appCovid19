
import 'package:appcovid19/src/pages/second_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'firts_tab_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
    
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin{

  TabController _pageController;

  List<Tab> tabMenu = <Tab>[
    Tab(
      icon: Icon(Icons.view_list),
      text: "Lista casos confirmados",
    ),
    Tab(
      icon: Icon(Icons.graphic_eq),
      text: "Estadisticas",
    )
  ];

  @override
  void initState() {
    super.initState();
    _pageController = new TabController( length: tabMenu.length, vsync: this );
    _pageController.addListener((){
      setState(() {
        PrimerTab();
        SegundoTab();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
        
      return Scaffold(
        appBar: AppBar(
          title: Text("Covid-19", style: TextStyle( fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize:25.0 )),
          centerTitle: true,
          brightness: Brightness.dark,
          bottom: TabBar(tabs: tabMenu, controller: _pageController),  
        ),
        body: TabBarView(
          children: [
            PrimerTab(),
            SegundoTab(),    
          ],
         controller: _pageController,      
        ),
      );
    } 
  }

 


    