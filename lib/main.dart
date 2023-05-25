import 'package:flutter/material.dart';
import 'package:mapfe/Graph.dart';
import 'package:mapfe/Home.dart';
import 'package:mapfe/Statistique.dart';
import 'package:mapfe/traitement.dart';
import 'Connexion.dart';

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
    },
  ),
  );
}