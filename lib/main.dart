import 'package:flutter/material.dart';
import 'package:mlm/features/network/pages/network.dart';
import 'package:mlm/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Network());
  }
}
