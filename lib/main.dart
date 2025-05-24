import 'package:flutter/material.dart';
import 'containmain.dart';
import 'Service/containcloud.dart';
import 'Web_Service/containweb.dart';
import 'AI_Service/containai.dart';
import 'DM_Service/containdm.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContainMain(),
      routes: {
        '/cloud-services': (context) => ContainCloud(),
        '/development-services': (context) => ContainWeb(),
        '/ai-ml-services': (context) => ContainAI(),
        '/digital-marketing': (context) => ContainDM(), 
      },
    );
  }
}
