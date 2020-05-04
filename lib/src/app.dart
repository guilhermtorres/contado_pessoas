import 'package:contadorpessoas/src/views/home_view.dart';
import 'package:flutter/material.dart';

class ContadorPessoasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: 'IndieFlower',
        accentColor: Colors.amberAccent,
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: 'FjallaOne',
                  fontSize: 20,
                ),
              ),
        ),
      ),
      home: HomeView(),
    );
  }
}
