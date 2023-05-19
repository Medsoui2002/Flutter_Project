import 'package:flutter/material.dart';
import 'package:mapfe/Home.dart';

import 'Connexion.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'connection': (context)=>const Connexion(),
      'home': (context)=>const Home(),
    },
  ),
  );
}