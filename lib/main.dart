import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:horse_rider/flame_layer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.setLandscape();
  Flame.device.fullScreen();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horse Rider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Horse Rider'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: const FlameLayer(),
    );
  }
}
