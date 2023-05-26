import 'package:flutter/material.dart';
import 'package:mapfe/Graph.dart';
import 'package:mapfe/Home.dart';
import 'package:mapfe/Statistique.dart';
import 'package:mapfe/traitement.dart';
import 'Connexion.dart';
import 'jour_charts.dart';
import 'mois_charts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'connection': (context)=>const Connexion(),
      'home': (context)=>const Home(),
      'graph': (context)=>const Graph(),
      'tr': (context)=>const Traitement(),
      'st': (context)=>const Statistique(),
      'moisch': (context)=>const mois_charts(),
      'jourch': (context)=>const jour_charts(),
    },
  ),
  );
}