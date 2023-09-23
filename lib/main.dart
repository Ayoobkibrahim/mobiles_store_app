import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/Gadgets Cart Provider.dart';
import 'Screens/intro.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GadgetCartProvider>(create: (context) => GadgetCartProvider(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}