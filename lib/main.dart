import 'package:flutter/material.dart';
import 'package:untitled/Screens/loading_screen.dart';
import 'services/api.dart';


var ayah = '';
void main() {
  runApp( Ayah());
}
class Ayah extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}

