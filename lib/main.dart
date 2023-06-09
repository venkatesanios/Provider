import 'package:flutter/material.dart';
import 'package:git1/UI_design/first_page.dart';
import 'package:git1/Provider/name_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ///provider class in MultiProvider
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => NameProvider()))
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 162)),
      ),
      home: const FirstPage(),
    );
  }
}
