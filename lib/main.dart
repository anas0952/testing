import 'package:flutter/material.dart';
import 'package:projecttest/views/gifts_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'RobotoSlab',
      ),
      debugShowCheckedModeBanner: false,
      home: const GiftsApp(),
    );
  }
}

class GiftsApp extends StatelessWidget {
  const GiftsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: GiftView(),
      ),
    );
  }
}
