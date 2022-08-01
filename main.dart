import 'package:flutter/material.dart';

import 'sections/hero_section.dart';
import 'sections/repeat_section.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Align (
                alignment: Alignment.center,
                child: Text("Animations Home Work"))
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: const [
                RepeatSection(),
                HeroScreen(),
                // HeroScreen(imageUrls: characterImages['rabbit']),
                // HeroScreen(imageUrls: characterImages['eeyore']),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
