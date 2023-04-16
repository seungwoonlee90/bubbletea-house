import 'package:bubble_tea/models/shop.dart';
import 'package:bubble_tea/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => Shop(),
    builder: (context, child) {
      return MaterialApp(
        home: const MyApp(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.brown),
      );
    }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LogInPage();
  }
}
