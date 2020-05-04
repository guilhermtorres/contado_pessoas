import 'package:contadorpessoas/src/views/home_view.dart';
import 'package:flutter/material.dart';

class ContadorPessoasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        accentColor: Colors.amberAccent,
        primarySwatch: Colors.purple,
      ),
      home: HomeView(),
    );
  }
}
