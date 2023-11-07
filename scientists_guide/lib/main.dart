import 'package:flutter/material.dart';
import 'package:scientists_guide/bilim_adami_listesi.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: BilimAdamiListesi(),
    );
  }
}