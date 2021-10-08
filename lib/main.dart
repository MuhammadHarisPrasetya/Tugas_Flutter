 import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Haris',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        backgroundColor: Colors.black,
        title: Text(
        'Selamat Datang Muhammad Haris Prasetya',
        style: TextStyle(
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search_off_outlined),
            tooltip: 'Open Search',
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert_outlined),
            tooltip: 'Open More',
            alignment: Alignment.centerRight,
            onPressed: () {},
          )
        ],
        actionsIconTheme: IconThemeData(color: Colors.pink),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: EdgeInsets.all(20),
        child: Icon(
          Icons.home, 
          color: Colors.pink,
          size: 50.0, 
        ),
      ),
    );
  }
}