import './home.dart';
import './popular.dart';
import './news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CYPTabs());
}

class CYPTabs extends StatefulWidget{
  @override
  CYPTabState createState() => CYPTabState();
}

class CYPTabState extends State<CYPTabs> with SingleTickerProviderStateMixin{
  
  // Code Baru
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  // Akhir Code Baru
  
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CYP Tabs'),
          backgroundColor: Colors.red[800],

          // Code Baru
          bottom: TabBar(
            controller: controller,
            tabs: <Tab>[
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.note),),
              Tab(icon: Icon(Icons.poll),),
            ]
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Home(),
            Popular(),
            News()
          ]
        )
      ),
    );
  }
}