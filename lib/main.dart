import 'package:flutter/material.dart';
import 'package:mapfe/Graph.dart';
import 'package:mapfe/Home.dart';

import 'Connexion.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'connection',
    routes: {
      'connection': (context)=>const Connexion(),
      'home': (context)=>const Home(),
      'graph': (context)=>const Graph(),
    },
  ),
  );
}
