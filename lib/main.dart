import 'package:flutter/material.dart';
import 'package:proditi/screen/detailDosen.dart';
import 'package:proditi/screen/dosenView.dart';
import 'package:proditi/screen/kontak.dart';
import 'package:proditi/screen/menuView.dart';
import 'package:proditi/screen/sejarah.dart';
import 'package:proditi/screen/visi.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // menggunakan widget MaterialApp
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
        title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )
      ),

// berikan menu
    //initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => MenuView(),
      '/sejarah': (context) => SejarahPage(),
      '/kontak' : (context) => KontakPage(),
      '/visi' : (context) => VisiPage(),
      '/dosen': (context) => DosenView(),
      '/detaildosen': (context)=> DetailDosen()
    },
    );

  }
}
